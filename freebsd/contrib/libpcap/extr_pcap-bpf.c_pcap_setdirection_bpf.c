
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int errbuf; int fd; } ;
typedef TYPE_1__ pcap_t ;
typedef scalar_t__ pcap_direction_t ;


 int BIOCSDIRECTION ;
 int BIOCSSEESENT ;
 int BPF_D_IN ;
 int BPF_D_INOUT ;
 int BPF_D_OUT ;
 scalar_t__ PCAP_D_IN ;
 scalar_t__ PCAP_D_INOUT ;
 scalar_t__ PCAP_D_OUT ;
 int errno ;
 int ioctl (int ,int ,int*) ;
 int pcap_fmt_errmsg_for_errno (int ,int,int ,char*,char*) ;
 int pcap_snprintf (int ,int,char*) ;

__attribute__((used)) static int
pcap_setdirection_bpf(pcap_t *p, pcap_direction_t d)
{
 (void) pcap_snprintf(p->errbuf, sizeof(p->errbuf),
     "This system doesn't support BIOCSSEESENT, so the direction can't be set");
 return (-1);

}
