
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct utsname {int release; } ;
struct pcap_linux {int sock_packet; int vlan_offset; int must_do_on_close; scalar_t__ cooked; } ;
struct ifreq {int ifr_flags; int ifr_name; } ;
struct TYPE_7__ {char* device; scalar_t__ promisc; } ;
struct TYPE_8__ {int fd; int linktype; scalar_t__ bufsize; scalar_t__ offset; scalar_t__ snapshot; int errbuf; TYPE_1__ opt; struct pcap_linux* priv; } ;
typedef TYPE_2__ pcap_t ;
typedef int ifr ;


 int EACCES ;
 int EPERM ;
 int ETH_P_ALL ;
 int IFF_PROMISC ;
 scalar_t__ MAX_LINKHEADER_SIZE ;
 int MUST_CLEAR_PROMISC ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_PERM_DENIED ;
 int PF_INET ;
 int SIOCGIFFLAGS ;
 int SIOCSIFFLAGS ;
 int SOCK_PACKET ;
 int errno ;
 int htons (int ) ;
 int iface_bind_old (int,char const*,int ) ;
 int iface_get_arptype (int,char const*,int ) ;
 int iface_get_mtu (int,char const*,int ) ;
 int ioctl (int,int ,struct ifreq*) ;
 int map_arphrd_to_dlt (TYPE_2__*,int,int,char const*,int ) ;
 int memset (struct ifreq*,int ,int) ;
 int pcap_add_to_pcaps_to_close (TYPE_2__*) ;
 int pcap_do_addexit (TYPE_2__*) ;
 int pcap_fmt_errmsg_for_errno (int ,int,int,char*) ;
 int pcap_snprintf (int ,int,char*,int) ;
 int socket (int ,int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlcpy (int ,char const*,int) ;
 scalar_t__ strncmp (int ,char*,int) ;
 scalar_t__ uname (struct utsname*) ;

__attribute__((used)) static int
activate_old(pcap_t *handle)
{
 struct pcap_linux *handlep = handle->priv;
 int err;
 int arptype;
 struct ifreq ifr;
 const char *device = handle->opt.device;
 struct utsname utsname;
 int mtu;



 handle->fd = socket(PF_INET, SOCK_PACKET, htons(ETH_P_ALL));
 if (handle->fd == -1) {
  err = errno;
  pcap_fmt_errmsg_for_errno(handle->errbuf, PCAP_ERRBUF_SIZE,
      err, "socket");
  if (err == EPERM || err == EACCES) {




   return PCAP_ERROR_PERM_DENIED;
  } else {



   return PCAP_ERROR;
  }
 }


 handlep->sock_packet = 1;


 handlep->cooked = 0;



 if (strcmp(device, "any") == 0) {
  strlcpy(handle->errbuf, "pcap_activate: The \"any\" device isn't supported on 2.0[.x]-kernel systems",
   PCAP_ERRBUF_SIZE);
  return PCAP_ERROR;
 }
 if (iface_bind_old(handle->fd, device, handle->errbuf) == -1)
  return PCAP_ERROR;




 arptype = iface_get_arptype(handle->fd, device, handle->errbuf);
 if (arptype < 0)
  return PCAP_ERROR;





 map_arphrd_to_dlt(handle, handle->fd, arptype, device, 0);
 if (handle->linktype == -1) {
  pcap_snprintf(handle->errbuf, PCAP_ERRBUF_SIZE,
    "unknown arptype %d", arptype);
  return PCAP_ERROR;
 }



 if (handle->opt.promisc) {
  memset(&ifr, 0, sizeof(ifr));
  strlcpy(ifr.ifr_name, device, sizeof(ifr.ifr_name));
  if (ioctl(handle->fd, SIOCGIFFLAGS, &ifr) == -1) {
   pcap_fmt_errmsg_for_errno(handle->errbuf,
       PCAP_ERRBUF_SIZE, errno, "SIOCGIFFLAGS");
   return PCAP_ERROR;
  }
  if ((ifr.ifr_flags & IFF_PROMISC) == 0) {
   if (!pcap_do_addexit(handle)) {





    return PCAP_ERROR;
   }

   ifr.ifr_flags |= IFF_PROMISC;
   if (ioctl(handle->fd, SIOCSIFFLAGS, &ifr) == -1) {
    pcap_fmt_errmsg_for_errno(handle->errbuf,
        PCAP_ERRBUF_SIZE, errno, "SIOCSIFFLAGS");
    return PCAP_ERROR;
   }
   handlep->must_do_on_close |= MUST_CLEAR_PROMISC;





   pcap_add_to_pcaps_to_close(handle);
  }
 }







 if (uname(&utsname) < 0 ||
     strncmp(utsname.release, "2.0", 3) == 0) {
  mtu = iface_get_mtu(handle->fd, device, handle->errbuf);
  if (mtu == -1)
   return PCAP_ERROR;
  handle->bufsize = MAX_LINKHEADER_SIZE + mtu;
  if (handle->bufsize < (u_int)handle->snapshot)
   handle->bufsize = (u_int)handle->snapshot;
 } else {






  handle->bufsize = (u_int)handle->snapshot;
 }





 handle->offset = 0;





 handlep->vlan_offset = -1;

 return 1;
}
