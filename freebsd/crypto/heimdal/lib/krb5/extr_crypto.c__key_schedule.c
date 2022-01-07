
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _krb5_key_type {int (* schedule ) (int ,struct _krb5_key_type*,struct _krb5_key_data*) ;int schedule_size; } ;
struct _krb5_key_data {int * schedule; TYPE_1__* key; } ;
struct _krb5_encryption_type {struct _krb5_key_type* keytype; } ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_2__ {int keytype; } ;


 int ALLOC (int *,int) ;
 scalar_t__ ENOMEM ;
 int N_ (char*,char*) ;
 struct _krb5_encryption_type* _krb5_find_enctype (int ) ;
 int free (int *) ;
 scalar_t__ krb5_data_alloc (int *,int ) ;
 int krb5_set_error_message (int ,scalar_t__,int ) ;
 int stub1 (int ,struct _krb5_key_type*,struct _krb5_key_data*) ;
 scalar_t__ unsupported_enctype (int ,int ) ;

__attribute__((used)) static krb5_error_code
_key_schedule(krb5_context context,
       struct _krb5_key_data *key)
{
    krb5_error_code ret;
    struct _krb5_encryption_type *et = _krb5_find_enctype(key->key->keytype);
    struct _krb5_key_type *kt;

    if (et == ((void*)0)) {
        return unsupported_enctype (context,
                               key->key->keytype);
    }

    kt = et->keytype;

    if(kt->schedule == ((void*)0))
 return 0;
    if (key->schedule != ((void*)0))
 return 0;
    ALLOC(key->schedule, 1);
    if(key->schedule == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    ret = krb5_data_alloc(key->schedule, kt->schedule_size);
    if(ret) {
 free(key->schedule);
 key->schedule = ((void*)0);
 return ret;
    }
    (*kt->schedule)(context, kt, key);
    return 0;
}
