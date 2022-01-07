
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t krb5_error_code ;


 size_t strlen (char const*) ;

__attribute__((used)) static krb5_error_code
len_string(int ucs2, const char *s)
{
    size_t len = strlen(s);
    if (ucs2)
 len *= 2;
    return len;
}
