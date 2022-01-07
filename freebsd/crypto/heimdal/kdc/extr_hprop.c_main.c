
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int * krb5_ccache ;
struct TYPE_7__ {scalar_t__ (* hdb_open ) (int ,TYPE_1__*,int ,int ) ;int (* hdb_destroy ) (int ,TYPE_1__*) ;} ;
typedef TYPE_1__ HDB ;


 scalar_t__ ENOENT ;


 int O_RDONLY ;
 int args ;
 int * database ;
 scalar_t__ decrypt_flag ;
 int dump_database (int ,int,int *,TYPE_1__*) ;
 scalar_t__ encrypt_flag ;
 int exit (int) ;
 int get_creds (int ,int **) ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 scalar_t__ hdb_create (int ,TYPE_1__**,int *) ;
 scalar_t__ hdb_read_master_key (int ,int ,int *) ;
 scalar_t__ help_flag ;
 scalar_t__ krb5_allow_weak_crypto (int ,int) ;
 int krb5_cc_destroy (int ,int *) ;
 int krb5_err (int ,int,scalar_t__,char*,...) ;
 int krb5_errx (int ,int,char*,...) ;
 int krb5_free_context (int ) ;
 scalar_t__ krb5_init_context (int *) ;
 int krb5_set_default_realm (int ,scalar_t__) ;
 scalar_t__ local_realm ;
 int mkey5 ;
 int mkeyfile ;
 int num_args ;
 int parse_source_type (int *) ;
 int print_version (int *) ;
 int propagate_database (int ,int,int *,TYPE_1__*,int *,int,int,char**) ;
 int setprogname (char*) ;
 int * source_type ;
 scalar_t__ stub1 (int ,TYPE_1__*,int ,int ) ;
 int stub2 (int ,TYPE_1__*) ;
 scalar_t__ to_stdout ;
 int usage (int) ;
 scalar_t__ version_flag ;

int
main(int argc, char **argv)
{
    krb5_error_code ret;
    krb5_context context;
    krb5_ccache ccache = ((void*)0);
    HDB *db = ((void*)0);
    int optidx = 0;

    int type, exit_code;

    setprogname(argv[0]);

    if(getarg(args, num_args, argc, argv, &optidx))
 usage(1);

    if(help_flag)
 usage(0);

    if(version_flag){
 print_version(((void*)0));
 exit(0);
    }

    ret = krb5_init_context(&context);
    if(ret)
 exit(1);


    ret = krb5_allow_weak_crypto(context, 1);
    if(ret)
        krb5_err(context, 1, ret, "krb5_allow_weak_crypto");

    if(local_realm)
 krb5_set_default_realm(context, local_realm);

    if(encrypt_flag && decrypt_flag)
 krb5_errx(context, 1,
    "only one of `--encrypt' and `--decrypt' is meaningful");

    if(source_type != ((void*)0)) {
 type = parse_source_type(source_type);
 if(type == 0)
     krb5_errx(context, 1, "unknown source type `%s'", source_type);
    } else
 type = 129;

    if(!to_stdout)
 get_creds(context, &ccache);

    if(decrypt_flag || encrypt_flag) {
 ret = hdb_read_master_key(context, mkeyfile, &mkey5);
 if(ret && ret != ENOENT)
     krb5_err(context, 1, ret, "hdb_read_master_key");
 if(ret)
     krb5_errx(context, 1, "No master key file found");
    }

    switch(type) {
    case 128:
 if (database == ((void*)0))
     krb5_errx(context, 1, "no dump file specified");
 break;
    case 129:
 ret = hdb_create (context, &db, database);
 if(ret)
     krb5_err(context, 1, ret, "hdb_create: %s", database);
 ret = db->hdb_open(context, db, O_RDONLY, 0);
 if(ret)
     krb5_err(context, 1, ret, "db->hdb_open");
 break;
    default:
 krb5_errx(context, 1, "unknown dump type `%d'", type);
 break;
    }

    if (to_stdout)
 exit_code = dump_database (context, type, database, db);
    else
 exit_code = propagate_database (context, type, database,
     db, ccache, optidx, argc, argv);

    if(ccache != ((void*)0))
 krb5_cc_destroy(context, ccache);

    if(db != ((void*)0))
 (*db->hdb_destroy)(context, db);

    krb5_free_context(context);
    return exit_code;
}
