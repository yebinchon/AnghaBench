
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_realm ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_const_principal ;


 scalar_t__ ERANGE ;
 int KRB5_PRINCIPAL_UNPARSE_DISPLAY ;
 int KRB5_PRINCIPAL_UNPARSE_NO_REALM ;
 int KRB5_PRINCIPAL_UNPARSE_SHORT ;
 int N_ (char*,char*) ;
 int add_char (char*,size_t,size_t,char) ;
 int free (int ) ;
 scalar_t__ krb5_get_default_realm (int ,int *) ;
 int krb5_set_error_message (int ,scalar_t__,int ) ;
 int * princ_ncomp (int ,size_t) ;
 size_t princ_num_comp (int ) ;
 int * princ_realm (int ) ;
 size_t quote_string (int *,char*,size_t,size_t,int) ;
 scalar_t__ strcmp (int *,int ) ;

__attribute__((used)) static krb5_error_code
unparse_name_fixed(krb5_context context,
     krb5_const_principal principal,
     char *name,
     size_t len,
     int flags)
{
    size_t idx = 0;
    size_t i;
    int short_form = (flags & KRB5_PRINCIPAL_UNPARSE_SHORT) != 0;
    int no_realm = (flags & KRB5_PRINCIPAL_UNPARSE_NO_REALM) != 0;
    int display = (flags & KRB5_PRINCIPAL_UNPARSE_DISPLAY) != 0;

    if (!no_realm && princ_realm(principal) == ((void*)0)) {
 krb5_set_error_message(context, ERANGE,
          N_("Realm missing from principal, "
      "can't unparse", ""));
 return ERANGE;
    }

    for(i = 0; i < princ_num_comp(principal); i++){
 if(i)
     add_char(name, idx, len, '/');
 idx = quote_string(princ_ncomp(principal, i), name, idx, len, display);
 if(idx == len) {
     krb5_set_error_message(context, ERANGE,
       N_("Out of space printing principal", ""));
     return ERANGE;
 }
    }

    if(short_form && !no_realm) {
 krb5_realm r;
 krb5_error_code ret;
 ret = krb5_get_default_realm(context, &r);
 if(ret)
     return ret;
 if(strcmp(princ_realm(principal), r) != 0)
     short_form = 0;
 free(r);
    }
    if(!short_form && !no_realm) {
 add_char(name, idx, len, '@');
 idx = quote_string(princ_realm(principal), name, idx, len, display);
 if(idx == len) {
     krb5_set_error_message(context, ERANGE,
       N_("Out of space printing "
          "realm of principal", ""));
     return ERANGE;
 }
    }
    return 0;
}
