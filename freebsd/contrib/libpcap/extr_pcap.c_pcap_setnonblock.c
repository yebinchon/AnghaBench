
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* setnonblock_op ) (TYPE_1__*,int) ;int errbuf; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 int strlcpy (char*,int ,int ) ;
 int stub1 (TYPE_1__*,int) ;

int
pcap_setnonblock(pcap_t *p, int nonblock, char *errbuf)
{
 int ret;

 ret = p->setnonblock_op(p, nonblock);
 if (ret == -1) {
  strlcpy(errbuf, p->errbuf, PCAP_ERRBUF_SIZE);
 }
 return (ret);
}
