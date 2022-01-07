
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ucl_object_t ;


 int UCL_ARRAY ;
 int assert (int ) ;
 int recursion ;
 int ucl_array_append (int *,int *) ;
 int * ucl_object_typed_new (int ) ;
 int * ucl_test_boolean () ;

__attribute__((used)) static ucl_object_t*
ucl_test_large_array (void)
{
 ucl_object_t *res, *cur;
 int count, i;
 uint32_t cur_len;

 res = ucl_object_typed_new (UCL_ARRAY);
 count = 65537;

 recursion ++;

 for (i = 0; i < count; i ++) {
  cur = ucl_test_boolean ();
  assert (cur != ((void*)0));

  ucl_array_append (res, cur);
 }

 return res;
}
