
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {scalar_t__ ifr_data; int ifr_name; } ;
struct ethtool_value {scalar_t__ data; int cmd; } ;
typedef int ifr ;
typedef scalar_t__ caddr_t ;
typedef int bpf_u_int32 ;
typedef int FILE ;


 int AF_INET ;
 int ETHTOOL_GLINK ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_IF_CONNECTION_STATUS_CONNECTED ;
 int PCAP_IF_CONNECTION_STATUS_DISCONNECTED ;
 int PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE ;
 int PCAP_IF_LOOPBACK ;
 int PCAP_IF_WIRELESS ;
 int SIOCETHTOOL ;
 int SOCK_DGRAM ;
 int asprintf (char**,char*,char const*) ;
 int close (int) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int fscanf (int *,char*,unsigned int*) ;
 int ioctl (int,int ,struct ifreq*) ;
 scalar_t__ is_wifi (int,char const*) ;
 int memset (struct ifreq*,int ,int) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int,char*,char const*) ;
 int pcap_snprintf (char*,int ,char*,char const*) ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int
get_if_flags(const char *name, bpf_u_int32 *flags, char *errbuf)
{
 int sock;
 FILE *fh;
 unsigned int arptype;
 struct ifreq ifr;
 struct ethtool_value info;

 if (*flags & PCAP_IF_LOOPBACK) {




  *flags |= PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE;
  return 0;
 }

 sock = socket(AF_INET, SOCK_DGRAM, 0);
 if (sock == -1) {
  pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE, errno,
      "Can't create socket to get ethtool information for %s",
      name);
  return -1;
 }





 if (is_wifi(sock, name)) {



  *flags |= PCAP_IF_WIRELESS;
 } else {






  char *pathstr;

  if (asprintf(&pathstr, "/sys/class/net/%s/type", name) == -1) {
   pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
       "%s: Can't generate path name string for /sys/class/net device",
       name);
   close(sock);
   return -1;
  }
  fh = fopen(pathstr, "r");
  if (fh != ((void*)0)) {
   if (fscanf(fh, "%u", &arptype) == 1) {



    switch (arptype) {


    case 131:
     close(sock);
     fclose(fh);
     free(pathstr);
     return 0;


    case 132:
    case 137:
    case 136:
    case 135:

    case 134:


    case 133:


    case 138:




     *flags |= PCAP_IF_WIRELESS;
     break;
    }
   }
   fclose(fh);
   free(pathstr);
  }
 }
 close(sock);
 return 0;
}
