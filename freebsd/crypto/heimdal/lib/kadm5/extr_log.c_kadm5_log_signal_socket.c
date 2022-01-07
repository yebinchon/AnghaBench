
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int asprintf (int *,char*,int ) ;
 int default_signal ;
 int hdb_db_dir (int ) ;
 char const* krb5_config_get_string_default (int ,int *,int ,char*,char*,int *) ;
 int signal_mutex ;

const char *
kadm5_log_signal_socket(krb5_context context)
{
    HEIMDAL_MUTEX_lock(&signal_mutex);
    if (!default_signal)
 asprintf(&default_signal, "%s/signal", hdb_db_dir(context));
    HEIMDAL_MUTEX_unlock(&signal_mutex);

    return krb5_config_get_string_default(context,
       ((void*)0),
       default_signal,
       "kdc",
       "signal_socket",
       ((void*)0));
}
