
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct outside_network {int want_to_quit; } ;



void
outside_network_quit_prepare(struct outside_network* outnet)
{
 if(!outnet)
  return;

 outnet->want_to_quit = 1;
}
