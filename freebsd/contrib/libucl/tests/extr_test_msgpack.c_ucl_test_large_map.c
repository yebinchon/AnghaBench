
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ucl_object_t ;


 int UCL_OBJECT ;
 int assert (int) ;
 char* random_key (size_t*) ;
 int recursion ;
 int ucl_object_insert_key (int *,int *,char const*,size_t,int) ;
 int * ucl_object_typed_new (int ) ;
 int * ucl_test_boolean () ;

__attribute__((used)) static ucl_object_t*
ucl_test_large_map (void)
{
 ucl_object_t *res, *cur;
 int count, i;
 uint32_t cur_len;
 size_t klen;
 const char *key;

 res = ucl_object_typed_new (UCL_OBJECT);
 count = 65537;

 recursion ++;

 for (i = 0; i < count; i ++) {
  key = random_key (&klen);
  cur = ucl_test_boolean ();
  assert (cur != ((void*)0));
  assert (klen != 0);

  ucl_object_insert_key (res, cur, key, klen, 1);
 }

 return res;
}
