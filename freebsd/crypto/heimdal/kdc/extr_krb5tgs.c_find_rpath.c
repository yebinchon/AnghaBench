
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;
typedef int Realm ;


 char* krb5_config_get_string (int ,int *,char*,int ,int ,int *) ;

__attribute__((used)) static const char *
find_rpath(krb5_context context, Realm crealm, Realm srealm)
{
    const char *new_realm = krb5_config_get_string(context,
         ((void*)0),
         "capaths",
         crealm,
         srealm,
         ((void*)0));
    return new_realm;
}
