
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int ucl_object_iter_t ;


 int UCL_ITERATE_BOTH ;
 int UCL_ITERATE_IMPLICIT ;
 int const* ucl_object_iterate_full (int ,int ) ;

const ucl_object_t*
ucl_object_iterate_safe (ucl_object_iter_t it, bool expand_values)
{
 return ucl_object_iterate_full (it, expand_values ? UCL_ITERATE_BOTH :
   UCL_ITERATE_IMPLICIT);
}
