
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int errbuf; int fd; } ;
typedef TYPE_1__ pcap_t ;


 int BIOCSDLT ;
 int errno ;
 int ioctl (int ,int ,int*) ;
 int pcap_fmt_errmsg_for_errno (int ,int,int ,char*,int) ;

__attribute__((used)) static int
pcap_set_datalink_bpf(pcap_t *p, int dlt)
{







 return (0);
}
