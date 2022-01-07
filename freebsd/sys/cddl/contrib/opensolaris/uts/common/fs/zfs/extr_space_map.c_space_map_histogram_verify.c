
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sm_shift; } ;
typedef TYPE_1__ space_map_t ;
struct TYPE_6__ {scalar_t__* rt_histogram; } ;
typedef TYPE_2__ range_tree_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;

boolean_t
space_map_histogram_verify(space_map_t *sm, range_tree_t *rt)
{




 for (int i = 0; i < sm->sm_shift; i++) {
  if (rt->rt_histogram[i] != 0)
   return (B_FALSE);
 }
 return (B_TRUE);
}
