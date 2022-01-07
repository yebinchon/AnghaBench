
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_keytab_entry ;
typedef int krb5_keytab ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int entry ;


 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_errx (int ,int,char*) ;
 scalar_t__ krb5_kt_close (int ,int ) ;
 scalar_t__ krb5_kt_have_content (int ,int ) ;
 int krb5_kt_remove_entry (int ,int ,int *) ;
 scalar_t__ krb5_kt_resolve (int ,char const*,int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void
test_empty_keytab(krb5_context context, const char *keytab)
{
    krb5_error_code ret;
    krb5_keytab id;
    krb5_keytab_entry entry;

    ret = krb5_kt_resolve(context, keytab, &id);
    if (ret)
 krb5_err(context, 1, ret, "krb5_kt_resolve");

    memset(&entry, 0, sizeof(entry));

    krb5_kt_remove_entry(context, id, &entry);

    ret = krb5_kt_have_content(context, id);
    if (ret == 0)
 krb5_errx(context, 1, "supposed to be empty keytab isn't");

    ret = krb5_kt_close(context, id);
    if (ret)
 krb5_err(context, 1, ret, "krb5_kt_close");
}
