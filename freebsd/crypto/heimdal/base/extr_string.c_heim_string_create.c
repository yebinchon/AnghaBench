
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ heim_string_t ;


 scalar_t__ _heim_alloc_object (int *,size_t) ;
 int _heim_string_object ;
 int memcpy (scalar_t__,char const*,size_t) ;
 size_t strlen (char const*) ;

heim_string_t
heim_string_create(const char *string)
{
    size_t len = strlen(string);
    heim_string_t s;

    s = _heim_alloc_object(&_heim_string_object, len + 1);
    if (s)
 memcpy(s, string, len + 1);
    return s;
}
