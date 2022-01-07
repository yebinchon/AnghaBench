
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ses_iterator {int global_element_index; int individual_element_index; TYPE_1__* cache; } ;
typedef scalar_t__ ses_elem_index_type_t ;
typedef int enc_element_t ;
struct TYPE_2__ {int * elm_map; } ;


 scalar_t__ SES_ELEM_INDEX_GLOBAL ;
 int * ses_iter_next (struct ses_iterator*) ;
 int ses_iter_reset (struct ses_iterator*) ;

__attribute__((used)) static enc_element_t *
ses_iter_seek_to(struct ses_iterator *iter, int element_index,
   ses_elem_index_type_t index_type)
{
 enc_element_t *element;
 int *cur_index;

 if (index_type == SES_ELEM_INDEX_GLOBAL)
  cur_index = &iter->global_element_index;
 else
  cur_index = &iter->individual_element_index;

 if (*cur_index == element_index) {

  return (&iter->cache->elm_map[iter->global_element_index]);
 }

 ses_iter_reset(iter);
 while ((element = ses_iter_next(iter)) != ((void*)0)
     && *cur_index != element_index)
  ;

 if (*cur_index != element_index)
  return (((void*)0));

 return (element);
}
