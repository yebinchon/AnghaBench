
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct rename_options {scalar_t__ delete_flag; } ;
typedef void* krb5_principal ;
typedef int krb5_kt_cursor ;
struct TYPE_6__ {void* principal; } ;
typedef TYPE_1__ krb5_keytab_entry ;
typedef int * krb5_keytab ;
typedef scalar_t__ krb5_error_code ;


 scalar_t__ KRB5_CC_END ;
 scalar_t__ KRB5_KT_END ;
 int context ;
 int krb5_free_principal (int ,void*) ;
 scalar_t__ krb5_kt_add_entry (int ,int *,TYPE_1__*) ;
 int krb5_kt_close (int ,int *) ;
 int krb5_kt_end_seq_get (int ,int *,int *) ;
 int krb5_kt_free_entry (int ,TYPE_1__*) ;
 scalar_t__ krb5_kt_next_entry (int ,int *,TYPE_1__*,int *) ;
 scalar_t__ krb5_kt_remove_entry (int ,int *,TYPE_1__*) ;
 scalar_t__ krb5_kt_start_seq_get (int ,int *,int *) ;
 scalar_t__ krb5_parse_name (int ,char*,void**) ;
 scalar_t__ krb5_principal_compare (int ,void*,void*) ;
 int krb5_warn (int ,scalar_t__,char*,...) ;
 int * ktutil_open_keytab () ;

int
kt_rename(struct rename_options *opt, int argc, char **argv)
{
    krb5_error_code ret = 0;
    krb5_keytab_entry entry;
    krb5_keytab keytab;
    krb5_kt_cursor cursor;
    krb5_principal from_princ, to_princ;

    ret = krb5_parse_name(context, argv[0], &from_princ);
    if(ret != 0) {
 krb5_warn(context, ret, "%s", argv[0]);
 return 1;
    }

    ret = krb5_parse_name(context, argv[1], &to_princ);
    if(ret != 0) {
 krb5_free_principal(context, from_princ);
 krb5_warn(context, ret, "%s", argv[1]);
 return 1;
    }

    if((keytab = ktutil_open_keytab()) == ((void*)0)) {
 krb5_free_principal(context, from_princ);
 krb5_free_principal(context, to_princ);
 return 1;
    }

    ret = krb5_kt_start_seq_get(context, keytab, &cursor);
    if(ret) {
 krb5_kt_close(context, keytab);
 krb5_free_principal(context, from_princ);
 krb5_free_principal(context, to_princ);
 return 1;
    }
    while(1) {
 ret = krb5_kt_next_entry(context, keytab, &entry, &cursor);
 if(ret != 0) {
     if(ret != KRB5_CC_END && ret != KRB5_KT_END)
  krb5_warn(context, ret, "getting entry from keytab");
     else
  ret = 0;
     break;
 }
 if(krb5_principal_compare(context, entry.principal, from_princ)) {
     krb5_free_principal(context, entry.principal);
     entry.principal = to_princ;
     ret = krb5_kt_add_entry(context, keytab, &entry);
     if(ret) {
  entry.principal = ((void*)0);
  krb5_kt_free_entry(context, &entry);
  krb5_warn(context, ret, "adding entry");
  break;
     }
     if (opt->delete_flag) {
  entry.principal = from_princ;
  ret = krb5_kt_remove_entry(context, keytab, &entry);
  if(ret) {
      entry.principal = ((void*)0);
      krb5_kt_free_entry(context, &entry);
      krb5_warn(context, ret, "removing entry");
      break;
  }
     }
     entry.principal = ((void*)0);
 }
 krb5_kt_free_entry(context, &entry);
    }
    krb5_kt_end_seq_get(context, keytab, &cursor);

    krb5_free_principal(context, from_princ);
    krb5_free_principal(context, to_princ);

    return ret != 0;
}
