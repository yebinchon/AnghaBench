
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* node; } ;
typedef TYPE_3__ switch_t ;
struct TYPE_6__ {unsigned int num_links; TYPE_1__** links; } ;
struct TYPE_5__ {int switch_id; } ;



__attribute__((used)) static int get_phys_connection(switch_t *sw, int switch_to)
{
 unsigned int i;

 for (i = 0; i < sw->node->num_links; i++)
  if (sw->node->links[i]->switch_id == switch_to)
   return i;
 return i;
}
