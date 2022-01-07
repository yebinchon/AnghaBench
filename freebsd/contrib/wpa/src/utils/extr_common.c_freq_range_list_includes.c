
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_freq_range_list {unsigned int num; TYPE_1__* range; } ;
struct TYPE_2__ {unsigned int min; unsigned int max; } ;



int freq_range_list_includes(const struct wpa_freq_range_list *list,
        unsigned int freq)
{
 unsigned int i;

 if (list == ((void*)0))
  return 0;

 for (i = 0; i < list->num; i++) {
  if (freq >= list->range[i].min && freq <= list->range[i].max)
   return 1;
 }

 return 0;
}
