
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int princ ;
typedef int kvno_str ;
typedef int krb5_keytab ;
typedef int krb5_error_code ;
typedef int krb5_enctype ;
typedef int krb5_context ;
typedef int krb5_const_principal ;


 int N_ (char*,char*) ;
 int free (char*) ;
 int krb5_enctype_to_string (int ,int ,char**) ;
 int krb5_kt_get_full_name (int ,int ,char**) ;
 int krb5_set_error_message (int ,int ,int ,char*,char*,char*,char*) ;
 int krb5_unparse_name_fixed (int ,int ,char*,int) ;
 int snprintf (char*,int,char*,int) ;

krb5_error_code
_krb5_kt_principal_not_found(krb5_context context,
        krb5_error_code ret,
        krb5_keytab id,
        krb5_const_principal principal,
        krb5_enctype enctype,
        int kvno)
{
    char princ[256], kvno_str[25], *kt_name;
    char *enctype_str = ((void*)0);

    krb5_unparse_name_fixed (context, principal, princ, sizeof(princ));
    krb5_kt_get_full_name (context, id, &kt_name);
    krb5_enctype_to_string(context, enctype, &enctype_str);

    if (kvno)
 snprintf(kvno_str, sizeof(kvno_str), "(kvno %d)", kvno);
    else
 kvno_str[0] = '\0';

    krb5_set_error_message (context, ret,
       N_("Failed to find %s%s in keytab %s (%s)",
          "principal, kvno, keytab file, enctype"),
       princ,
       kvno_str,
       kt_name ? kt_name : "unknown keytab",
       enctype_str ? enctype_str : "unknown enctype");
    free(kt_name);
    free(enctype_str);
    return ret;
}
