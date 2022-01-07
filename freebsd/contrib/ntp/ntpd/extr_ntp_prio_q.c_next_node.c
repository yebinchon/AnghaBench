
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* node_next; } ;
typedef TYPE_1__ node ;



void *
next_node(
 void *pv
 )
{
 node *pn;

 pn = pv;
 pn--;

 if (pn->node_next == ((void*)0))
  return ((void*)0);

 return pn->node_next + 1;
}
