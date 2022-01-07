
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct pcap_linux {int must_do_on_close; char* device; char* mondevice; int oldmode; } ;
struct nl80211_state {int dummy; } ;
struct TYPE_10__ {int mode; } ;
struct TYPE_9__ {int ifrn_name; } ;
struct iwreq {int ifr_flags; TYPE_2__ u; TYPE_1__ ifr_ifrn; int ifr_name; } ;
struct ifreq {int ifr_flags; TYPE_2__ u; TYPE_1__ ifr_ifrn; int ifr_name; } ;
struct TYPE_11__ {char* errbuf; int fd; struct pcap_linux* priv; } ;
typedef TYPE_3__ pcap_t ;
typedef int ifr ;


 int IFF_PROMISC ;
 int IFF_UP ;
 int MUST_CLEAR_PROMISC ;
 int MUST_CLEAR_RFMON ;
 int MUST_DELETE_MONIF ;
 int SIOCGIFFLAGS ;
 int SIOCSIFFLAGS ;
 int SIOCSIWMODE ;
 int del_mon_if (TYPE_3__*,int ,struct nl80211_state*,char*,char*) ;
 int errno ;
 int fprintf (int ,char*,char*,char*) ;
 int free (char*) ;
 int ioctl (int ,int ,struct iwreq*) ;
 int memset (struct iwreq*,int ,int) ;
 int nl80211_cleanup (struct nl80211_state*) ;
 int nl80211_init (TYPE_3__*,struct nl80211_state*,char*) ;
 int pcap_cleanup_live_common (TYPE_3__*) ;
 int pcap_remove_from_pcaps_to_close (TYPE_3__*) ;
 int stderr ;
 char* strerror (int ) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void pcap_cleanup_linux( pcap_t *handle )
{
 struct pcap_linux *handlep = handle->priv;
 struct ifreq ifr;
 if (handlep->must_do_on_close != 0) {




  if (handlep->must_do_on_close & MUST_CLEAR_PROMISC) {
   memset(&ifr, 0, sizeof(ifr));
   strlcpy(ifr.ifr_name, handlep->device,
       sizeof(ifr.ifr_name));
   if (ioctl(handle->fd, SIOCGIFFLAGS, &ifr) == -1) {
    fprintf(stderr,
        "Can't restore interface %s flags (SIOCGIFFLAGS failed: %s).\n"
        "Please adjust manually.\n"
        "Hint: This can't happen with Linux >= 2.2.0.\n",
        handlep->device, strerror(errno));
   } else {
    if (ifr.ifr_flags & IFF_PROMISC) {




     ifr.ifr_flags &= ~IFF_PROMISC;
     if (ioctl(handle->fd, SIOCSIFFLAGS,
         &ifr) == -1) {
      fprintf(stderr,
          "Can't restore interface %s flags (SIOCSIFFLAGS failed: %s).\n"
          "Please adjust manually.\n"
          "Hint: This can't happen with Linux >= 2.2.0.\n",
          handlep->device,
          strerror(errno));
     }
    }
   }
  }
  pcap_remove_from_pcaps_to_close(handle);
 }

 if (handlep->mondevice != ((void*)0)) {
  free(handlep->mondevice);
  handlep->mondevice = ((void*)0);
 }
 if (handlep->device != ((void*)0)) {
  free(handlep->device);
  handlep->device = ((void*)0);
 }
 pcap_cleanup_live_common(handle);
}
