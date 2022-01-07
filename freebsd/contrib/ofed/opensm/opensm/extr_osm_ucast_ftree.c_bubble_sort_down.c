
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int ftree_port_group_t ;


 scalar_t__ port_group_compare_load_down (int *,int *) ;

__attribute__((used)) static inline void
bubble_sort_down(ftree_port_group_t ** p_group_array, uint32_t nmemb)
{
 uint32_t i = 0;
 uint32_t j = 0;
 ftree_port_group_t *tmp = p_group_array[0];




 for (i = 0; tmp; i++) {

  tmp = ((void*)0);

  for (j = 1; j < (nmemb - i); j++) {

   if (port_group_compare_load_down
       (p_group_array[j], p_group_array[j - 1]) < 0) {

    tmp = p_group_array[j - 1];
    p_group_array[j - 1] = p_group_array[j];
    p_group_array[j] = tmp;

   }
  }
 }
}
