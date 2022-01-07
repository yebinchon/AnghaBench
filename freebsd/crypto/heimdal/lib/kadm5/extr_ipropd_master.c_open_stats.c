
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;
typedef int FILE ;


 int asprintf (char**,char*,int ) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int hdb_db_dir (int ) ;
 char* krb5_config_get_string_default (int ,int *,char*,char*,char*,int *) ;
 char* slave_stats_file ;

__attribute__((used)) static FILE *
open_stats(krb5_context context)
{
    char *statfile = ((void*)0);
    const char *fn;
    FILE *f;

    if (slave_stats_file)
 fn = slave_stats_file;
    else {
 asprintf(&statfile, "%s/slaves-stats", hdb_db_dir(context));
 fn = krb5_config_get_string_default(context,
         ((void*)0),
         statfile,
         "kdc",
         "iprop-stats",
         ((void*)0));
    }
    f = fopen(fn, "w");
    if (statfile)
 free(statfile);

    return f;
}
