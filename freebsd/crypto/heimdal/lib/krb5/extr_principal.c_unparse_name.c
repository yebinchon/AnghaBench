
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_const_principal ;


 scalar_t__ ENOMEM ;
 int N_ (char*,char*) ;
 int free (char*) ;
 int krb5_set_error_message (int ,scalar_t__,int ) ;
 char* malloc (size_t) ;
 scalar_t__ princ_ncomp (int ,size_t) ;
 size_t princ_num_comp (int ) ;
 scalar_t__ princ_realm (int ) ;
 int quotable_chars ;
 size_t strcspn (scalar_t__,int ) ;
 size_t strlen (scalar_t__) ;
 scalar_t__ unparse_name_fixed (int ,int ,char*,size_t,int) ;

__attribute__((used)) static krb5_error_code
unparse_name(krb5_context context,
      krb5_const_principal principal,
      char **name,
      int flags)
{
    size_t len = 0, plen;
    size_t i;
    krb5_error_code ret;

    if (princ_realm(principal)) {
 plen = strlen(princ_realm(principal));

 if(strcspn(princ_realm(principal), quotable_chars) == plen)
     len += plen;
 else
     len += 2*plen;
 len++;
    }
    for(i = 0; i < princ_num_comp(principal); i++){
 plen = strlen(princ_ncomp(principal, i));
 if(strcspn(princ_ncomp(principal, i), quotable_chars) == plen)
     len += plen;
 else
     len += 2*plen;
 len++;
    }
    len++;
    *name = malloc(len);
    if(*name == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM,
          N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    ret = unparse_name_fixed(context, principal, *name, len, flags);
    if(ret) {
 free(*name);
 *name = ((void*)0);
    }
    return ret;
}
