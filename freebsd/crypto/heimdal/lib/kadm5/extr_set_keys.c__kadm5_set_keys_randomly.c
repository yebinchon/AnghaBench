
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_21__ {int keytype; } ;
typedef TYPE_2__ krb5_keyblock ;
typedef int kblock ;
struct TYPE_22__ {int context; } ;
typedef TYPE_3__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
struct TYPE_20__ {size_t len; TYPE_5__* val; } ;
struct TYPE_23__ {TYPE_1__ keys; int principal; } ;
typedef TYPE_4__ hdb_entry ;
struct TYPE_24__ {TYPE_2__ key; } ;
typedef TYPE_5__ Key ;


 scalar_t__ ENOMEM ;
 int _kadm5_free_keys (int ,size_t,TYPE_5__*) ;
 int free (TYPE_2__*) ;
 int hdb_entry_clear_password (int ,TYPE_4__*) ;
 int hdb_entry_set_pw_change_time (int ,TYPE_4__*,int ) ;
 scalar_t__ hdb_generate_key_set (int ,int ,TYPE_5__**,size_t*,int) ;
 scalar_t__ is_des_key_p (int ) ;
 scalar_t__ krb5_copy_keyblock_contents (int ,TYPE_2__*,TYPE_2__*) ;
 int krb5_free_keyblock_contents (int ,TYPE_2__*) ;
 scalar_t__ krb5_generate_random_keyblock (int ,int ,TYPE_2__*) ;
 TYPE_2__* malloc (size_t) ;
 int memset (TYPE_2__*,int ,size_t) ;

kadm5_ret_t
_kadm5_set_keys_randomly (kadm5_server_context *context,
     hdb_entry *ent,
     krb5_keyblock **new_keys,
     int *n_keys)
{
   krb5_keyblock *kblock = ((void*)0);
   kadm5_ret_t ret = 0;
   int des_keyblock;
   size_t i, num_keys;
   Key *keys;

   ret = hdb_generate_key_set(context->context, ent->principal,
          &keys, &num_keys, 1);
   if (ret)
 return ret;

   kblock = malloc(num_keys * sizeof(kblock[0]));
   if (kblock == ((void*)0)) {
 ret = ENOMEM;
 _kadm5_free_keys (context->context, num_keys, keys);
 return ret;
   }
   memset(kblock, 0, num_keys * sizeof(kblock[0]));

   des_keyblock = -1;
   for (i = 0; i < num_keys; i++) {






 if (des_keyblock != -1 && is_des_key_p(keys[i].key.keytype)) {
     ret = krb5_copy_keyblock_contents (context->context,
            &kblock[des_keyblock],
            &kblock[i]);
     if (ret)
  goto out;
     kblock[i].keytype = keys[i].key.keytype;
 } else {
     ret = krb5_generate_random_keyblock (context->context,
       keys[i].key.keytype,
       &kblock[i]);
     if (ret)
  goto out;

     if (is_des_key_p(keys[i].key.keytype))
  des_keyblock = i;
 }

 ret = krb5_copy_keyblock_contents (context->context,
        &kblock[i],
        &keys[i].key);
 if (ret)
     goto out;
   }

out:
   if(ret) {
 for (i = 0; i < num_keys; ++i)
     krb5_free_keyblock_contents (context->context, &kblock[i]);
 free(kblock);
 _kadm5_free_keys (context->context, num_keys, keys);
 return ret;
   }

   _kadm5_free_keys (context->context, ent->keys.len, ent->keys.val);
   ent->keys.val = keys;
   ent->keys.len = num_keys;
   *new_keys = kblock;
   *n_keys = num_keys;

   hdb_entry_set_pw_change_time(context->context, ent, 0);
   hdb_entry_clear_password(context->context, ent);

   return 0;
}
