
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 int UCL_STRING_ESCAPE ;
 int * ucl_object_fromstring_common (char const*,size_t,int ) ;

ucl_object_t *
ucl_object_fromlstring (const char *str, size_t len)
{
 return ucl_object_fromstring_common (str, len, UCL_STRING_ESCAPE);
}
