
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_context ;



__attribute__((used)) static krb5_error_code
resolve_init(krb5_context context, void **ctx)
{
    *ctx = ((void*)0);
    return 0;
}
