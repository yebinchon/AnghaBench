
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int krb5_salt ;
typedef scalar_t__ (* krb5_s2k_proc ) (TYPE_1__*,scalar_t__,int ,int ,int *,int **) ;
typedef int krb5_principal ;
typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef scalar_t__ krb5_enctype ;
typedef int krb5_data ;
typedef TYPE_1__* krb5_context ;
typedef int krb5_const_pointer ;
struct TYPE_11__ {scalar_t__* etypes; } ;
typedef int METHOD_DATA ;


 scalar_t__ ETYPE_NULL ;
 int _krb5_debug (TYPE_1__*,int,char*,scalar_t__) ;
 int krb5_free_keyblock (TYPE_1__*,int *) ;
 int krb5_free_salt (TYPE_1__*,int ) ;
 scalar_t__ krb5_get_pw_salt (TYPE_1__*,int ,int *) ;
 scalar_t__ make_pa_enc_timestamp (TYPE_1__*,int *,scalar_t__,int *) ;
 scalar_t__ stub1 (TYPE_1__*,scalar_t__,int ,int ,int *,int **) ;

__attribute__((used)) static krb5_error_code
add_enc_ts_padata(krb5_context context,
    METHOD_DATA *md,
    krb5_principal client,
    krb5_s2k_proc keyproc,
    krb5_const_pointer keyseed,
    krb5_enctype *enctypes,
    unsigned netypes,
    krb5_salt *salt,
    krb5_data *s2kparams)
{
    krb5_error_code ret;
    krb5_salt salt2;
    krb5_enctype *ep;
    size_t i;

    if(salt == ((void*)0)) {

 ret = krb5_get_pw_salt (context, client, &salt2);
 if (ret)
     return ret;
 salt = &salt2;
    }
    if (!enctypes) {
 enctypes = context->etypes;
 netypes = 0;
 for (ep = enctypes; *ep != ETYPE_NULL; ep++)
     netypes++;
    }

    for (i = 0; i < netypes; ++i) {
 krb5_keyblock *key;

 _krb5_debug(context, 5, "krb5_get_init_creds: using ENC-TS with enctype %d", enctypes[i]);

 ret = (*keyproc)(context, enctypes[i], keyseed,
    *salt, s2kparams, &key);
 if (ret)
     continue;
 ret = make_pa_enc_timestamp (context, md, enctypes[i], key);
 krb5_free_keyblock (context, key);
 if (ret)
     return ret;
    }
    if(salt == &salt2)
 krb5_free_salt(context, salt2);
    return 0;
}
