
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 int * ucl_object_copy_internal (int const*,int) ;

ucl_object_t *
ucl_object_copy (const ucl_object_t *other)
{
 return ucl_object_copy_internal (other, 1);
}
