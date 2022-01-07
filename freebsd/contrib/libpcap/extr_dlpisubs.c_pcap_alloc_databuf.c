
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int errbuf; int * buffer; scalar_t__ offset; scalar_t__ bufsize; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 scalar_t__ PKTBUFSIZE ;
 int errno ;
 int * malloc (scalar_t__) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int ,char*) ;

int
pcap_alloc_databuf(pcap_t *p)
{
 p->bufsize = PKTBUFSIZE;
 p->buffer = malloc(p->bufsize + p->offset);
 if (p->buffer == ((void*)0)) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "malloc");
  return (-1);
 }

 return (0);
}
