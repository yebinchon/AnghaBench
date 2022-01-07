
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;
typedef int Key ;


 int hdb_free_keys (int ,int,int *) ;

void
_kadm5_free_keys (krb5_context context,
    int len, Key *keys)
{
    hdb_free_keys(context, len, keys);
}
