
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int krb5_salt ;
typedef int krb5_principal ;
typedef int krb5_keyblock ;
typedef scalar_t__ (* krb5_key_proc ) (TYPE_1__*,scalar_t__,int ,int ,int **) ;
typedef scalar_t__ krb5_error_code ;
typedef scalar_t__ krb5_enctype ;
typedef TYPE_1__* krb5_context ;
typedef int krb5_const_pointer ;
struct TYPE_14__ {unsigned int len; int * val; } ;
struct TYPE_13__ {scalar_t__* etypes; } ;
typedef int PA_DATA ;
typedef TYPE_3__ METHOD_DATA ;


 scalar_t__ ENOMEM ;
 scalar_t__ ETYPE_NULL ;
 int N_ (char*,char*) ;
 int krb5_free_keyblock (TYPE_1__*,int *) ;
 int krb5_free_salt (TYPE_1__*,int ) ;
 scalar_t__ krb5_get_pw_salt (TYPE_1__*,int ,int *) ;
 int krb5_set_error_message (TYPE_1__*,scalar_t__,int ) ;
 scalar_t__ make_pa_enc_timestamp (TYPE_1__*,int *,scalar_t__,int *) ;
 int * realloc (int *,unsigned int) ;
 scalar_t__ stub1 (TYPE_1__*,scalar_t__,int ,int ,int **) ;

__attribute__((used)) static krb5_error_code
add_padata(krb5_context context,
    METHOD_DATA *md,
    krb5_principal client,
    krb5_key_proc key_proc,
    krb5_const_pointer keyseed,
    krb5_enctype *enctypes,
    unsigned netypes,
    krb5_salt *salt)
{
    krb5_error_code ret;
    PA_DATA *pa2;
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
    pa2 = realloc (md->val, (md->len + netypes) * sizeof(*md->val));
    if (pa2 == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    md->val = pa2;

    for (i = 0; i < netypes; ++i) {
 krb5_keyblock *key;

 ret = (*key_proc)(context, enctypes[i], *salt, keyseed, &key);
 if (ret)
     continue;
 ret = make_pa_enc_timestamp (context, &md->val[md->len],
         enctypes[i], key);
 krb5_free_keyblock (context, key);
 if (ret)
     return ret;
 ++md->len;
    }
    if(salt == &salt2)
 krb5_free_salt(context, salt2);
    return 0;
}
