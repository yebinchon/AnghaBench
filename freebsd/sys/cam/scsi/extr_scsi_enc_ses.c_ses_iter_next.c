
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ses_iterator {int global_element_index; size_t type_index; scalar_t__ type_element_index; TYPE_2__* cache; void* saved_individual_element_index; void* individual_element_index; } ;
struct TYPE_7__ {TYPE_1__* hdr; } ;
typedef TYPE_3__ ses_type_t ;
struct TYPE_8__ {size_t ses_ntypes; TYPE_3__* ses_types; } ;
typedef TYPE_4__ ses_cache_t ;
typedef int enc_element_t ;
struct TYPE_6__ {int * elm_map; scalar_t__ nelms; TYPE_4__* private; } ;
struct TYPE_5__ {scalar_t__ etype_maxelt; } ;


 void* ITERATOR_INDEX_END ;
 void* ITERATOR_INDEX_INVALID ;
 int KASSERT (int,char*) ;

__attribute__((used)) static enc_element_t *
ses_iter_next(struct ses_iterator *iter)
{
 ses_cache_t *ses_cache;
 const ses_type_t *element_type;

 ses_cache = iter->cache->private;






 if (iter->global_element_index >= (int)iter->cache->nelms - 1) {


  iter->type_index = ITERATOR_INDEX_END;
  iter->type_element_index = ITERATOR_INDEX_END;
  iter->global_element_index = ITERATOR_INDEX_END;
  iter->individual_element_index = ITERATOR_INDEX_END;
  iter->saved_individual_element_index = ITERATOR_INDEX_END;
  return (((void*)0));
 }

 KASSERT((iter->type_index < ses_cache->ses_ntypes),
  ("Corrupted element iterator. %d not less than %d",
   iter->type_index, ses_cache->ses_ntypes));

 element_type = &ses_cache->ses_types[iter->type_index];
 iter->global_element_index++;
 iter->type_element_index++;






 if (iter->type_element_index > element_type->hdr->etype_maxelt) {





  iter->type_index++;
  iter->type_element_index = 0;
  iter->individual_element_index = ITERATOR_INDEX_INVALID;
 }

 if (iter->type_element_index > 0) {
  iter->individual_element_index =
      ++iter->saved_individual_element_index;
 }

 return (&iter->cache->elm_map[iter->global_element_index]);
}
