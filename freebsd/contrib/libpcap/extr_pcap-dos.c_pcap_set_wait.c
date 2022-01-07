
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_dos {void (* wait_proc ) () ;} ;
struct TYPE_4__ {int timeout; } ;
struct TYPE_5__ {TYPE_1__ opt; struct pcap_dos* priv; } ;
typedef TYPE_2__ pcap_t ;



void pcap_set_wait (pcap_t *p, void (*yield)(void), int wait)
{
  if (p)
  {
    struct pcap_dos *pd = p->priv;

    pd->wait_proc = yield;
    p->opt.timeout = wait;
  }
}
