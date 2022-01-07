
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 int ucl_object_compare (int const*,int const*) ;

int
ucl_object_compare_qsort (const ucl_object_t **o1,
  const ucl_object_t **o2)
{
 return ucl_object_compare (*o1, *o2);
}
