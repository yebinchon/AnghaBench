
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdb_dbinfo {int const* binding; void* log_file; void* acl_file; void* mkey_file; void* realm; void* dbname; void* label; } ;
typedef int krb5_context ;
typedef int krb5_config_binding ;


 int ENOMEM ;
 struct hdb_dbinfo* calloc (int,int) ;
 char* krb5_config_get_string (int ,int const*,char*,int *) ;
 int krb5_set_error_message (int ,int,char*) ;
 void* strdup (char const*) ;

__attribute__((used)) static int
get_dbinfo(krb5_context context,
    const krb5_config_binding *db_binding,
    const char *label,
    struct hdb_dbinfo **db)
{
    struct hdb_dbinfo *di;
    const char *p;

    *db = ((void*)0);

    p = krb5_config_get_string(context, db_binding, "dbname", ((void*)0));
    if(p == ((void*)0))
 return 0;

    di = calloc(1, sizeof(*di));
    if (di == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, "malloc: out of memory");
 return ENOMEM;
    }
    di->label = strdup(label);
    di->dbname = strdup(p);

    p = krb5_config_get_string(context, db_binding, "realm", ((void*)0));
    if(p)
 di->realm = strdup(p);
    p = krb5_config_get_string(context, db_binding, "mkey_file", ((void*)0));
    if(p)
 di->mkey_file = strdup(p);
    p = krb5_config_get_string(context, db_binding, "acl_file", ((void*)0));
    if(p)
 di->acl_file = strdup(p);
    p = krb5_config_get_string(context, db_binding, "log_file", ((void*)0));
    if(p)
 di->log_file = strdup(p);

    di->binding = db_binding;

    *db = di;
    return 0;
}
