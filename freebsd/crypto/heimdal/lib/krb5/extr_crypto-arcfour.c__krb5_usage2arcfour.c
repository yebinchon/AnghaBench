
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_context ;







krb5_error_code
_krb5_usage2arcfour(krb5_context context, unsigned *usage)
{
    switch (*usage) {
    case 131 :
 *usage = 8;
 return 0;
    case 130 :
 *usage = 13;
 return 0;
    case 128 :
        *usage = 15;
        return 0;
    case 129:
 *usage = 0;
 return 0;
    default :
 return 0;
    }
}
