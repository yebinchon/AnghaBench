
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct utsname {char* release; } ;
struct ifreq {int ifr_name; } ;
struct bpf_dltlist {int bfl_list; } ;
struct TYPE_5__ {scalar_t__ device; } ;
struct TYPE_6__ {int errbuf; TYPE_1__ opt; } ;
typedef TYPE_2__ pcap_t ;
typedef char* caddr_t ;


 int AF_INET ;
 int BIOCSETIF ;
 int DLT_NULL ;


 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_IFACE_NOT_UP ;
 int PCAP_ERROR_NO_SUCH_DEVICE ;
 int PCAP_ERROR_RFMON_NOTSUP ;
 int SIOCGIFFLAGS ;
 int SOCK_DGRAM ;
 int bpf_open (int ) ;
 int close (int) ;
 int errno ;
 int find_802_11 (struct bpf_dltlist*) ;
 int free (int ) ;
 int get_dlt_list (int,int ,struct bpf_dltlist*,int ) ;
 scalar_t__ ioctl (int,int ,char*) ;
 int monitor_mode (TYPE_2__*,int ) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int,char*,...) ;
 int socket (int ,int ,int ) ;
 int strlcat (int ,scalar_t__,int) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ strncmp (scalar_t__,char*,int) ;
 int strncpy (int ,scalar_t__,int) ;
 int uname (struct utsname*) ;

__attribute__((used)) static int
pcap_can_set_rfmon_bpf(pcap_t *p)
{
 return (0);

}
