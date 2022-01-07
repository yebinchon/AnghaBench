
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* device; } ;
struct TYPE_7__ {int (* cleanup_op ) (TYPE_2__*) ;TYPE_1__ opt; } ;
typedef TYPE_2__ pcap_t ;


 int free (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

void
pcap_close(pcap_t *p)
{
 if (p->opt.device != ((void*)0))
  free(p->opt.device);
 p->cleanup_op(p);
 free(p);
}
