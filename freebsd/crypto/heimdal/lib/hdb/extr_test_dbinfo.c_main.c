
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdb_dbinfo {int dummy; } ;
typedef int krb5_context ;


 int args ;
 int errx (int,char*,int) ;
 int exit (int ) ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 char* hdb_dbinfo_get_acl_file (int ,struct hdb_dbinfo*) ;
 char* hdb_dbinfo_get_dbname (int ,struct hdb_dbinfo*) ;
 char* hdb_dbinfo_get_label (int ,struct hdb_dbinfo*) ;
 char* hdb_dbinfo_get_mkey_file (int ,struct hdb_dbinfo*) ;
 struct hdb_dbinfo* hdb_dbinfo_get_next (struct hdb_dbinfo*,struct hdb_dbinfo*) ;
 char* hdb_dbinfo_get_realm (int ,struct hdb_dbinfo*) ;
 int hdb_free_dbinfo (int ,struct hdb_dbinfo**) ;
 int hdb_get_dbinfo (int ,struct hdb_dbinfo**) ;
 scalar_t__ help_flag ;
 int krb5_err (int ,int,int,char*) ;
 int krb5_free_context (int ) ;
 int krb5_init_context (int *) ;
 int krb5_std_usage (int,int ,int ) ;
 int num_args ;
 int print_version (int *) ;
 int printf (char*,char const*) ;
 int setprogname (char*) ;
 scalar_t__ version_flag ;

int
main(int argc, char **argv)
{
    struct hdb_dbinfo *info, *d;
    krb5_context context;
    int ret, o = 0;

    setprogname(argv[0]);

    if(getarg(args, num_args, argc, argv, &o))
 krb5_std_usage(1, args, num_args);

    if(help_flag)
 krb5_std_usage(0, args, num_args);

    if(version_flag){
 print_version(((void*)0));
 exit(0);
    }

    ret = krb5_init_context(&context);
    if (ret)
 errx (1, "krb5_init_context failed: %d", ret);

    ret = hdb_get_dbinfo(context, &info);
    if (ret)
 krb5_err(context, 1, ret, "hdb_get_dbinfo");

    d = ((void*)0);
    while ((d = hdb_dbinfo_get_next(info, d)) != ((void*)0)) {
 const char *s;
 s = hdb_dbinfo_get_label(context, d);
 printf("label: %s\n", s ? s : "no label");
 s = hdb_dbinfo_get_realm(context, d);
 printf("\trealm: %s\n", s ? s : "no realm");
 s = hdb_dbinfo_get_dbname(context, d);
 printf("\tdbname: %s\n", s ? s : "no dbname");
 s = hdb_dbinfo_get_mkey_file(context, d);
 printf("\tmkey_file: %s\n", s ? s : "no mkey file");
 s = hdb_dbinfo_get_acl_file(context, d);
 printf("\tacl_file: %s\n", s ? s : "no acl file");
    }

    hdb_free_dbinfo(context, &info);

    krb5_free_context(context);

    return 0;
}
