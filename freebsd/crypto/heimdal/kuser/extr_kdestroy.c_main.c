
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
struct TYPE_4__ {int server; } ;
typedef TYPE_1__ krb5_creds ;
typedef int krb5_context ;
typedef int krb5_cccol_cursor ;
typedef int * krb5_ccache ;


 scalar_t__ all_flag ;
 int args ;
 int * cache ;
 scalar_t__ credential ;
 int errx (int,char*,scalar_t__) ;
 int exit (int ) ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 scalar_t__ help_flag ;
 scalar_t__ k_hasafs () ;
 scalar_t__ k_unlog () ;
 int krb5_cc_clear_mcred (TYPE_1__*) ;
 int krb5_cc_close (int ,int *) ;
 scalar_t__ krb5_cc_default (int ,int **) ;
 scalar_t__ krb5_cc_destroy (int ,int *) ;
 scalar_t__ krb5_cc_remove_cred (int ,int *,int ,TYPE_1__*) ;
 scalar_t__ krb5_cc_resolve (int ,int *,int **) ;
 int krb5_cccol_cursor_free (int ,int *) ;
 scalar_t__ krb5_cccol_cursor_new (int ,int *) ;
 scalar_t__ krb5_cccol_cursor_next (int ,int ,int **) ;
 int krb5_err (int ,int,scalar_t__,char*,...) ;
 int krb5_free_context (int ) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_init_context (int *) ;
 scalar_t__ krb5_parse_name (int ,scalar_t__,int *) ;
 int krb5_warn (int ,scalar_t__,char*) ;
 int num_args ;
 int print_version (int *) ;
 int setprogname (char*) ;
 scalar_t__ unlog_flag ;
 int usage (int) ;
 scalar_t__ version_flag ;

int
main (int argc, char **argv)
{
    krb5_error_code ret;
    krb5_context context;
    krb5_ccache ccache;
    int optidx = 0;
    int exit_val = 0;

    setprogname (argv[0]);

    if(getarg(args, num_args, argc, argv, &optidx))
 usage(1);

    if (help_flag)
 usage (0);

    if(version_flag){
 print_version(((void*)0));
 exit(0);
    }

    argc -= optidx;
    argv += optidx;

    if (argc != 0)
 usage (1);

    ret = krb5_init_context (&context);
    if (ret)
 errx (1, "krb5_init_context failed: %d", ret);

    if (all_flag) {
 krb5_cccol_cursor cursor;

 ret = krb5_cccol_cursor_new (context, &cursor);
 if (ret)
     krb5_err(context, 1, ret, "krb5_cccol_cursor_new");

 while (krb5_cccol_cursor_next (context, cursor, &ccache) == 0 && ccache != ((void*)0)) {

     ret = krb5_cc_destroy (context, ccache);
     if (ret) {
  krb5_warn(context, ret, "krb5_cc_destroy");
  exit_val = 1;
     }
 }
 krb5_cccol_cursor_free(context, &cursor);

    } else {
 if(cache == ((void*)0)) {
     ret = krb5_cc_default(context, &ccache);
     if (ret)
  krb5_err(context, 1, ret, "krb5_cc_default");
 } else {
     ret = krb5_cc_resolve(context,
       cache,
       &ccache);
     if (ret)
  krb5_err(context, 1, ret, "krb5_cc_resolve");
 }

 if (ret == 0) {
     if (credential) {
  krb5_creds mcred;

  krb5_cc_clear_mcred(&mcred);

  ret = krb5_parse_name(context, credential, &mcred.server);
  if (ret)
      krb5_err(context, 1, ret,
        "Can't parse principal %s", credential);

  ret = krb5_cc_remove_cred(context, ccache, 0, &mcred);
  if (ret)
      krb5_err(context, 1, ret,
        "Failed to remove principal %s", credential);

  krb5_cc_close(context, ccache);
  krb5_free_principal(context, mcred.server);
  krb5_free_context(context);
  return 0;
     }

     ret = krb5_cc_destroy (context, ccache);
     if (ret) {
  krb5_warn(context, ret, "krb5_cc_destroy");
  exit_val = 1;
     }
 }
    }

    krb5_free_context (context);


    if (unlog_flag && k_hasafs ()) {
 if (k_unlog ())
     exit_val = 1;
    }


    return exit_val;
}
