
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_enctype ;
typedef int krb5_context ;
typedef int hdb_entry ;
typedef int Key ;


 int hdb_next_enctype2key (int ,int *,int ,int **) ;

krb5_error_code
hdb_enctype2key(krb5_context context,
  hdb_entry *e,
  krb5_enctype enctype,
  Key **key)
{
    *key = ((void*)0);
    return hdb_next_enctype2key(context, e, enctype, key);
}
