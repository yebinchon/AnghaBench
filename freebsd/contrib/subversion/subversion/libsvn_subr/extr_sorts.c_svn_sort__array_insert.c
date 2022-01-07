
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nelts; int elt_size; scalar_t__ elts; } ;
typedef TYPE_1__ apr_array_header_t ;


 int apr_array_push (TYPE_1__*) ;
 int assert (int) ;
 int memcpy (char*,void const*,int) ;
 int memmove (char*,char*,int) ;

void
svn_sort__array_insert(apr_array_header_t *array,
                       const void *new_element,
                       int insert_index)
{
  int elements_to_move;
  char *new_position;

  assert(0 <= insert_index && insert_index <= array->nelts);
  elements_to_move = array->nelts - insert_index;



  apr_array_push(array);



  new_position = (char *)array->elts + insert_index * array->elt_size;
  memmove(new_position + array->elt_size, new_position,
          array->elt_size * elements_to_move);


  memcpy(new_position, new_element, array->elt_size);
}
