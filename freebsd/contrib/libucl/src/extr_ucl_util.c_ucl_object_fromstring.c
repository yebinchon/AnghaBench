
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 int UCL_STRING_ESCAPE ;
 int * ucl_object_fromstring_common (char const*,int ,int ) ;

ucl_object_t*
ucl_object_fromstring (const char *str)
{
 return ucl_object_fromstring_common (str, 0, UCL_STRING_ESCAPE);
}
