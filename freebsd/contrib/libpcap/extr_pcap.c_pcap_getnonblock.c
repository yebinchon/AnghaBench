
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* getnonblock_op ) (TYPE_1__*) ;int errbuf; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 int strlcpy (char*,int ,int ) ;
 int stub1 (TYPE_1__*) ;

int
pcap_getnonblock(pcap_t *p, char *errbuf)
{
 int ret;

 ret = p->getnonblock_op(p);
 if (ret == -1) {
  strlcpy(errbuf, p->errbuf, PCAP_ERRBUF_SIZE);
 }
 return (ret);
}
