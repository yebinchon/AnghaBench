
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ifreq {scalar_t__ ifr_name; } ;
struct TYPE_4__ {scalar_t__ device; scalar_t__ rfmon; } ;
struct TYPE_5__ {TYPE_1__ opt; int errbuf; } ;
typedef TYPE_2__ pcap_t ;


 int AF_INET ;
 scalar_t__ ENETDOWN ;
 int ENXIO ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_IFACE_NOT_UP ;
 int PCAP_ERROR_NO_SUCH_DEVICE ;
 int PCAP_ERROR_RFMON_NOTSUP ;
 int SIOCGIFFLAGS ;
 int SOCK_DGRAM ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int,int ,char*) ;
 int pcap_fmt_errmsg_for_errno (int ,scalar_t__,scalar_t__,char*,...) ;
 int socket (int ,int ,int ) ;
 int strlcat (scalar_t__,scalar_t__,int) ;
 int strlcpy (scalar_t__,char*,int) ;
 scalar_t__ strncmp (scalar_t__,char*,int) ;

__attribute__((used)) static int
check_setif_failure(pcap_t *p, int error)
{






 if (error == ENXIO) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "BIOCSETIF failed");
  return (PCAP_ERROR_NO_SUCH_DEVICE);
 } else if (errno == ENETDOWN) {







  return (PCAP_ERROR_IFACE_NOT_UP);
 } else {




  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "BIOCSETIF: %s", p->opt.device);
  return (PCAP_ERROR);
 }
}
