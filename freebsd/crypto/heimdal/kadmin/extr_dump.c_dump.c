
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct dump_options {scalar_t__ decrypt_flag; } ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_6__ {int (* hdb_close ) (int ,TYPE_1__*) ;scalar_t__ (* hdb_open ) (int ,TYPE_1__*,int ,int) ;} ;
typedef TYPE_1__ HDB ;
typedef int FILE ;


 int HDB_F_DECRYPT ;
 int O_RDONLY ;
 TYPE_1__* _kadm5_s_get_db (int ) ;
 int context ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int hdb_foreach (int ,TYPE_1__*,int ,int ,int *) ;
 int hdb_print_entry ;
 int kadm_handle ;
 int krb5_warn (int ,scalar_t__,char*,...) ;
 int krb5_warnx (int ,char*) ;
 int local_flag ;
 int * stdout ;
 scalar_t__ stub1 (int ,TYPE_1__*,int ,int) ;
 int stub2 (int ,TYPE_1__*) ;

int
dump(struct dump_options *opt, int argc, char **argv)
{
    krb5_error_code ret;
    FILE *f;
    HDB *db = ((void*)0);

    if(!local_flag) {
 krb5_warnx(context, "dump is only available in local (-l) mode");
 return 0;
    }

    db = _kadm5_s_get_db(kadm_handle);

    if(argc == 0)
 f = stdout;
    else
 f = fopen(argv[0], "w");

    if(f == ((void*)0)) {
 krb5_warn(context, errno, "open: %s", argv[0]);
 goto out;
    }
    ret = db->hdb_open(context, db, O_RDONLY, 0600);
    if(ret) {
 krb5_warn(context, ret, "hdb_open");
 goto out;
    }

    hdb_foreach(context, db, opt->decrypt_flag ? HDB_F_DECRYPT : 0,
  hdb_print_entry, f);

    db->hdb_close(context, db);
out:
    if(f && f != stdout)
 fclose(f);
    return 0;
}
