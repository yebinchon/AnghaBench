
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef scalar_t__ krb5_enctype ;
typedef int krb5_context ;


 int ALLOC (scalar_t__*,size_t) ;
 scalar_t__ KRB5_ENCTYPE_NULL ;
 int KRB5_PROG_ETYPE_NOSUPP ;
 int N_ (char*,char*) ;
 int free (scalar_t__*) ;
 scalar_t__ krb5_enctype_valid (int ,scalar_t__ const) ;
 int krb5_enomem (int ) ;
 int krb5_set_error_message (int ,int ,int ) ;

__attribute__((used)) static krb5_error_code
copy_enctypes(krb5_context context,
       const krb5_enctype *in,
       krb5_enctype **out)
{
    krb5_enctype *p = ((void*)0);
    size_t m, n;

    for (n = 0; in[n]; n++)
 ;
    n++;
    ALLOC(p, n);
    if(p == ((void*)0))
 return krb5_enomem(context);
    for (n = 0, m = 0; in[n]; n++) {
 if (krb5_enctype_valid(context, in[n]) != 0)
     continue;
 p[m++] = in[n];
    }
    p[m] = KRB5_ENCTYPE_NULL;
    if (m == 0) {
 free(p);
 krb5_set_error_message (context, KRB5_PROG_ETYPE_NOSUPP,
    N_("no valid enctype set", ""));
 return KRB5_PROG_ETYPE_NOSUPP;
    }
    *out = p;
    return 0;
}
