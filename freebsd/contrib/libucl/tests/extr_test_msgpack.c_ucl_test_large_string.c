
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ ucl_object_t ;


 int UCL_OBJECT_BINARY ;
 int UCL_STRING_RAW ;
 char* malloc (int) ;
 int pcg32_random () ;
 TYPE_1__* ucl_object_fromstring_common (char*,int,int ) ;

__attribute__((used)) static ucl_object_t*
ucl_test_large_string (void)
{
 ucl_object_t *res;
 char *str;
 uint32_t cur_len;

 while ((cur_len = pcg32_random ()) % 100000 == 0);
 str = malloc (cur_len % 100000);
 res = ucl_object_fromstring_common (str, cur_len % 100000,
    UCL_STRING_RAW);
 res->flags |= UCL_OBJECT_BINARY;

 return res;
}
