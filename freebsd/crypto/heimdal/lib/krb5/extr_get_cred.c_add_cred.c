
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_creds ;
typedef int krb5_context ;


 int ENOMEM ;
 int N_ (char*,char*) ;
 int krb5_copy_creds (int ,int const*,int **) ;
 int krb5_set_error_message (int ,int ,int ) ;
 int ** realloc (int **,int) ;

__attribute__((used)) static krb5_error_code
add_cred(krb5_context context, krb5_creds const *tkt, krb5_creds ***tgts)
{
    int i;
    krb5_error_code ret;
    krb5_creds **tmp = *tgts;

    for(i = 0; tmp && tmp[i]; i++);
    tmp = realloc(tmp, (i+2)*sizeof(*tmp));
    if(tmp == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM,
          N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    *tgts = tmp;
    ret = krb5_copy_creds(context, tkt, &tmp[i]);
    tmp[i+1] = ((void*)0);
    return ret;
}
