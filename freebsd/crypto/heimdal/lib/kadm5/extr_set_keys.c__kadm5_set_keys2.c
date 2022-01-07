
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {int key_data_ver; int * key_data_length; int * key_data_contents; int * key_data_type; } ;
typedef TYPE_3__ krb5_key_data ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_20__ {int context; } ;
typedef TYPE_4__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
typedef int int16_t ;
struct TYPE_18__ {unsigned int len; TYPE_7__* val; } ;
struct TYPE_21__ {TYPE_2__ keys; } ;
typedef TYPE_5__ hdb_entry ;
struct TYPE_17__ {int keyvalue; int keytype; } ;
struct TYPE_23__ {TYPE_6__* salt; TYPE_1__ key; int * mkvno; } ;
struct TYPE_22__ {int salt; int type; } ;
typedef TYPE_6__ Salt ;
typedef TYPE_7__ Key ;


 scalar_t__ ENOMEM ;
 int _kadm5_free_keys (int ,unsigned int,TYPE_7__*) ;
 int _kadm5_init_keys (TYPE_7__*,unsigned int) ;
 TYPE_6__* calloc (int,int) ;
 int hdb_entry_clear_password (int ,TYPE_5__*) ;
 int hdb_entry_set_pw_change_time (int ,TYPE_5__*,int ) ;
 scalar_t__ krb5_data_copy (int *,int ,int ) ;
 TYPE_7__* malloc (unsigned int) ;

kadm5_ret_t
_kadm5_set_keys2(kadm5_server_context *context,
   hdb_entry *ent,
   int16_t n_key_data,
   krb5_key_data *key_data)
{
    krb5_error_code ret;
    int i;
    unsigned len;
    Key *keys;

    len = n_key_data;
    keys = malloc (len * sizeof(*keys));
    if (keys == ((void*)0) && len != 0)
 return ENOMEM;

    _kadm5_init_keys (keys, len);

    for(i = 0; i < n_key_data; i++) {
 keys[i].mkvno = ((void*)0);
 keys[i].key.keytype = key_data[i].key_data_type[0];
 ret = krb5_data_copy(&keys[i].key.keyvalue,
        key_data[i].key_data_contents[0],
        key_data[i].key_data_length[0]);
 if(ret)
     goto out;
 if(key_data[i].key_data_ver == 2) {
     Salt *salt;

     salt = calloc(1, sizeof(*salt));
     if(salt == ((void*)0)) {
  ret = ENOMEM;
  goto out;
     }
     keys[i].salt = salt;
     salt->type = key_data[i].key_data_type[1];
     krb5_data_copy(&salt->salt,
      key_data[i].key_data_contents[1],
      key_data[i].key_data_length[1]);
 } else
     keys[i].salt = ((void*)0);
    }
    _kadm5_free_keys (context->context, ent->keys.len, ent->keys.val);
    ent->keys.len = len;
    ent->keys.val = keys;

    hdb_entry_set_pw_change_time(context->context, ent, 0);
    hdb_entry_clear_password(context->context, ent);

    return 0;
 out:
    _kadm5_free_keys (context->context, len, keys);
    return ret;
}
