
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 int UCL_ARRAY ;
 int nelt ;
 int pcg32_random () ;
 int ucl_array_append (int *,int ) ;
 int ucl_object_frombool (int) ;
 int * ucl_object_typed_new (int ) ;

__attribute__((used)) static ucl_object_t*
ucl_test_boolean (void)
{
 ucl_object_t *res;
 int count, i;

 res = ucl_object_typed_new (UCL_ARRAY);
 count = pcg32_random () % nelt;

 for (i = 0; i < count; i ++) {
  ucl_array_append (res, ucl_object_frombool (pcg32_random () % 2));
 }

 return res;
}
