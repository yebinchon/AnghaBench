
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 int UCL_NULL ;
 int * ucl_object_typed_new (int ) ;

ucl_object_t *
ucl_object_new (void)
{
 return ucl_object_typed_new (UCL_NULL);
}
