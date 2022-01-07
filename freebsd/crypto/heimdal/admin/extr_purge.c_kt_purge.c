
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int time_t ;
struct purge_options {int age_string; } ;
struct e {scalar_t__ max_vno; int timestamp; } ;
typedef int krb5_kt_cursor ;
struct TYPE_5__ {scalar_t__ vno; int principal; int timestamp; } ;
typedef TYPE_1__ krb5_keytab_entry ;
typedef int * krb5_keytab ;
typedef scalar_t__ krb5_error_code ;


 int add_entry (int ,scalar_t__,int ,struct e**) ;
 int context ;
 int delete_list (struct e*) ;
 int free (char*) ;
 struct e* get_entry (int ,struct e*) ;
 int keytab_string ;
 int krb5_kt_close (int ,int *) ;
 scalar_t__ krb5_kt_end_seq_get (int ,int *,int *) ;
 int krb5_kt_free_entry (int ,TYPE_1__*) ;
 scalar_t__ krb5_kt_next_entry (int ,int *,TYPE_1__*,int *) ;
 scalar_t__ krb5_kt_remove_entry (int ,int *,TYPE_1__*) ;
 scalar_t__ krb5_kt_start_seq_get (int ,int *,int *) ;
 int krb5_unparse_name (int ,int ,char**) ;
 int krb5_warn (int ,scalar_t__,char*,...) ;
 int krb5_warnx (int ,char*,...) ;
 int * ktutil_open_keytab () ;
 int parse_time (int ,char*) ;
 int printf (char*,char*,scalar_t__) ;
 int time (int *) ;
 scalar_t__ verbose_flag ;

int
kt_purge(struct purge_options *opt, int argc, char **argv)
{
    krb5_error_code ret = 0;
    krb5_kt_cursor cursor;
    krb5_keytab keytab;
    krb5_keytab_entry entry;
    int age;
    struct e *head = ((void*)0);
    time_t judgement_day;

    age = parse_time(opt->age_string, "s");
    if(age < 0) {
 krb5_warnx(context, "unparasable time `%s'", opt->age_string);
 return 1;
    }

    if((keytab = ktutil_open_keytab()) == ((void*)0))
 return 1;

    ret = krb5_kt_start_seq_get(context, keytab, &cursor);
    if(ret){
 krb5_warn(context, ret, "%s", keytab_string);
 goto out;
    }

    while(krb5_kt_next_entry(context, keytab, &entry, &cursor) == 0) {
 add_entry (entry.principal, entry.vno, entry.timestamp, &head);
 krb5_kt_free_entry(context, &entry);
    }
    krb5_kt_end_seq_get(context, keytab, &cursor);

    judgement_day = time (((void*)0));

    ret = krb5_kt_start_seq_get(context, keytab, &cursor);
    if(ret){
 krb5_warn(context, ret, "%s", keytab_string);
 goto out;
    }

    while(krb5_kt_next_entry(context, keytab, &entry, &cursor) == 0) {
 struct e *e = get_entry (entry.principal, head);

 if (e == ((void*)0)) {
     krb5_warnx (context, "ignoring extra entry");
     continue;
 }

 if (entry.vno < e->max_vno
     && judgement_day - e->timestamp > age) {
     if (verbose_flag) {
  char *name_str;

  krb5_unparse_name (context, entry.principal, &name_str);
  printf ("removing %s vno %d\n", name_str, entry.vno);
  free (name_str);
     }
     ret = krb5_kt_remove_entry (context, keytab, &entry);
     if (ret)
  krb5_warn (context, ret, "remove");
 }
 krb5_kt_free_entry(context, &entry);
    }
    ret = krb5_kt_end_seq_get(context, keytab, &cursor);

    delete_list (head);

 out:
    krb5_kt_close (context, keytab);
    return ret != 0;
}
