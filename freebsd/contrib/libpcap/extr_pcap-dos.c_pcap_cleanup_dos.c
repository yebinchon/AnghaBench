
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ps_drop; } ;
struct pcap_dos {TYPE_1__ stat; } ;
struct TYPE_6__ {int fd; struct pcap_dos* priv; } ;
typedef TYPE_2__ pcap_t ;


 int close_driver () ;
 int exc_occured ;
 int get_device (int) ;
 int ** handle_to_device ;
 scalar_t__ pcap_stats (TYPE_2__*,int *) ;
 scalar_t__ ref_count ;

__attribute__((used)) static void pcap_cleanup_dos (pcap_t *p)
{
  struct pcap_dos *pd;

  if (!exc_occured)
  {
    pd = p->priv;
    if (pcap_stats(p,((void*)0)) < 0)
       pd->stat.ps_drop = 0;
    if (!get_device(p->fd))
       return;

    handle_to_device [p->fd-1] = ((void*)0);
    p->fd = 0;
    if (ref_count > 0)
        ref_count--;
    if (ref_count > 0)
       return;
  }
  close_driver();

}
