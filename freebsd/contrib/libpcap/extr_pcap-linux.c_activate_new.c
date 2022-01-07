
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int val ;
struct pcap_linux {int cooked; char* mondevice; int ifindex; int vlan_offset; void* lo_ifindex; scalar_t__ sock_packet; } ;
typedef int packet_mreq ;
typedef int socklen_t ;
struct TYPE_7__ {char* device; scalar_t__ tstamp_precision; scalar_t__ promisc; scalar_t__ rfmon; } ;
struct TYPE_8__ {int linktype; scalar_t__ snapshot; scalar_t__ bufsize; int fd; int bpf_codegen_flags; int errbuf; TYPE_1__ opt; scalar_t__ offset; scalar_t__ dlt_count; int * dlt_list; struct pcap_linux* priv; } ;
typedef TYPE_2__ pcap_t ;
typedef int nsec_tstamps ;
typedef int mr ;
typedef int bpf_extensions ;


 int BPF_SPECIAL_VLAN_HANDLING ;

 int DLT_LINUX_IRDA ;
 int DLT_LINUX_LAPD ;

 int DLT_NETLINK ;
 scalar_t__ EACCES ;
 scalar_t__ EAFNOSUPPORT ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOPROTOOPT ;
 scalar_t__ EPERM ;
 int ETH_ALEN ;
 int PACKET_ADD_MEMBERSHIP ;
 int PACKET_AUXDATA ;
 int PACKET_MR_PROMISC ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_PERM_DENIED ;
 int PCAP_ERROR_RFMON_NOTSUP ;
 scalar_t__ PCAP_TSTAMP_PRECISION_NANO ;
 int PF_PACKET ;
 int SKF_AD_VLAN_TAG_PRESENT ;
 scalar_t__ SLL_HDR_LEN ;
 int SOCK_DGRAM ;
 int SOCK_RAW ;
 int SOL_PACKET ;
 int SOL_SOCKET ;
 int SO_BPF_EXTENSIONS ;
 int SO_TIMESTAMPNS ;
 scalar_t__ VLAN_TAG_LEN ;
 int close (int) ;
 int ebuf ;
 int enter_rfmon_mode (TYPE_2__*,int,char const*) ;
 scalar_t__ errno ;
 int free (int *) ;
 scalar_t__ getsockopt (int,int ,int ,int*,int*) ;
 int iface_bind (int,int,int ,int) ;
 int iface_get_arptype (int,char const*,int ) ;
 void* iface_get_id (int,char const*,int ) ;
 int map_arphrd_to_dlt (TYPE_2__*,int,int,char const*,int) ;
 int memset (int*,int ,int) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,scalar_t__,char*) ;
 int pcap_protocol (TYPE_2__*) ;
 int pcap_snprintf (int ,int ,char*,...) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlcpy (int ,char*,int ) ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static int
activate_new(pcap_t *handle)
{
 strlcpy(ebuf,
  "New packet capturing interface not supported by build "
  "environment", PCAP_ERRBUF_SIZE);
 return 0;

}
