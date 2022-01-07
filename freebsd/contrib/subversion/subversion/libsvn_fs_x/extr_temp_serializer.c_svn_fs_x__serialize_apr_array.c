
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_temp_serializer__context_t ;
typedef int apr_size_t ;
struct TYPE_3__ {int elt_size; scalar_t__ nelts; int elts; } ;
typedef TYPE_1__ apr_array_header_t ;


 int svn_temp_serializer__add_leaf (int *,void const* const*,int) ;
 int svn_temp_serializer__pop (int *) ;
 int svn_temp_serializer__push (int *,void const* const*,int) ;

void
svn_fs_x__serialize_apr_array(svn_temp_serializer__context_t *context,
                              apr_array_header_t **a)
{
  const apr_array_header_t *array = *a;


  if (array == ((void*)0))
    return;


  svn_temp_serializer__push(context,
                            (const void * const *)a,
                            sizeof(*array));


  svn_temp_serializer__add_leaf(context,
                                (const void * const *)&array->elts,
                                (apr_size_t)array->nelts * array->elt_size);


  svn_temp_serializer__pop(context);
}
