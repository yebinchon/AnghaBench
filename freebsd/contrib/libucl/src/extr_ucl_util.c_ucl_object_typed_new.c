
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_type_t ;
typedef int ucl_object_t ;


 int * ucl_object_new_full (int ,int ) ;

ucl_object_t *
ucl_object_typed_new (ucl_type_t type)
{
 return ucl_object_new_full (type, 0);
}
