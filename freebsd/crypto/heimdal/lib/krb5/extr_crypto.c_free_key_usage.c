
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _krb5_key_usage {int key; } ;
struct _krb5_encryption_type {int dummy; } ;
typedef int krb5_context ;


 int _krb5_free_key_data (int ,int *,struct _krb5_encryption_type*) ;

__attribute__((used)) static void
free_key_usage(krb5_context context, struct _krb5_key_usage *ku,
        struct _krb5_encryption_type *et)
{
    _krb5_free_key_data(context, &ku->key, et);
}
