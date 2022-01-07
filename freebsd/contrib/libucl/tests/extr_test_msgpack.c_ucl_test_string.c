
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ ucl_object_t ;


 int UCL_ARRAY ;
 int UCL_OBJECT_BINARY ;
 int UCL_STRING_RAW ;
 int free (char*) ;
 char* malloc (int) ;
 int nelt ;
 int pcg32_random () ;
 int ucl_array_append (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* ucl_object_fromstring_common (char*,int,int ) ;
 TYPE_1__* ucl_object_typed_new (int ) ;

__attribute__((used)) static ucl_object_t*
ucl_test_string (void)
{
 ucl_object_t *res, *elt;
 int count, i;
 uint32_t cur_len;
 char *str;

 res = ucl_object_typed_new (UCL_ARRAY);
 count = pcg32_random () % nelt;

 for (i = 0; i < count; i ++) {
  while ((cur_len = pcg32_random ()) % 128 == 0);

  str = malloc (cur_len % 128);
  ucl_array_append (res, ucl_object_fromstring_common (str, cur_len % 128,
    UCL_STRING_RAW));
  free (str);

  while ((cur_len = pcg32_random ()) % 512 == 0);
  str = malloc (cur_len % 512);
  ucl_array_append (res, ucl_object_fromstring_common (str, cur_len % 512,
    UCL_STRING_RAW));
  free (str);

  while ((cur_len = pcg32_random ()) % 128 == 0);
  str = malloc (cur_len % 128);
  elt = ucl_object_fromstring_common (str, cur_len % 128,
    UCL_STRING_RAW);
  elt->flags |= UCL_OBJECT_BINARY;
  ucl_array_append (res, elt);
  free (str);

  while ((cur_len = pcg32_random ()) % 512 == 0);
  str = malloc (cur_len % 512);
  elt = ucl_object_fromstring_common (str, cur_len % 512,
    UCL_STRING_RAW);
  elt->flags |= UCL_OBJECT_BINARY;
  ucl_array_append (res, elt);
  free (str);
 }


 str = malloc (65537);
 elt = ucl_object_fromstring_common (str, 65537,
   UCL_STRING_RAW);
 elt->flags |= UCL_OBJECT_BINARY;
 ucl_array_append (res, elt);
 free (str);

 return res;
}
