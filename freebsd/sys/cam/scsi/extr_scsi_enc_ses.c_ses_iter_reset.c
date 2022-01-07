
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ses_iterator {void* saved_individual_element_index; void* individual_element_index; void* global_element_index; void* type_element_index; scalar_t__ type_index; } ;


 void* ITERATOR_INDEX_INVALID ;

__attribute__((used)) static void
ses_iter_reset(struct ses_iterator *iter)
{





 iter->type_index = 0;
 iter->type_element_index = ITERATOR_INDEX_INVALID;
 iter->global_element_index = ITERATOR_INDEX_INVALID;
 iter->individual_element_index = ITERATOR_INDEX_INVALID;
 iter->saved_individual_element_index = ITERATOR_INDEX_INVALID;
}
