
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_8__ {TYPE_1__* p_sw; } ;
struct TYPE_9__ {TYPE_2__ hca_or_sw; } ;
typedef TYPE_3__ ftree_port_group_t ;
struct TYPE_7__ {scalar_t__ counter_up_changed; } ;


 scalar_t__ FALSE ;
 scalar_t__ port_group_compare_load_up (TYPE_3__*,TYPE_3__*) ;

__attribute__((used)) static inline void
bubble_sort_up(ftree_port_group_t ** p_group_array, uint32_t nmemb)
{
 uint32_t i = 0;
 uint32_t j = 0;
 ftree_port_group_t *tmp = p_group_array[0];



 if (tmp->hca_or_sw.p_sw->counter_up_changed == FALSE) {
  return;
 }



 for (i = 0; tmp; i++) {

  tmp = ((void*)0);

  for (j = 1; j < (nmemb - i); j++) {

   if (port_group_compare_load_up(p_group_array[j],
             p_group_array[j - 1]) < 0) {

    tmp = p_group_array[j - 1];
    p_group_array[j - 1] = p_group_array[j];
    p_group_array[j] = tmp;

   }
  }
 }



 p_group_array[0]->hca_or_sw.p_sw->counter_up_changed = FALSE;
}
