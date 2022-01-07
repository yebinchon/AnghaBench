
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_dlpi {scalar_t__ send_fd; } ;
struct TYPE_3__ {int errbuf; int fd; struct pcap_dlpi* priv; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 int dlrawdatareq (scalar_t__,void const*,size_t) ;
 int errno ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int ,char*) ;
 int pcap_snprintf (int ,int ,char*) ;
 int strlcpy (int ,char*,int ) ;
 int write (int ,void const*,size_t) ;

__attribute__((used)) static int
pcap_inject_dlpi(pcap_t *p, const void *buf, size_t size)
{



 int ret;
 strlcpy(p->errbuf, "send: Not supported on this version of this OS",
     PCAP_ERRBUF_SIZE);
 ret = -1;

 return (ret);
}
