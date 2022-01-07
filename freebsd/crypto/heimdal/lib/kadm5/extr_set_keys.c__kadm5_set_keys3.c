
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_13__ {int context; } ;
typedef TYPE_2__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
struct TYPE_12__ {unsigned int len; TYPE_4__* val; } ;
struct TYPE_14__ {TYPE_1__ keys; } ;
typedef TYPE_3__ hdb_entry ;
struct TYPE_15__ {int * salt; int key; int * mkvno; } ;
typedef TYPE_4__ Key ;


 scalar_t__ ENOMEM ;
 int _kadm5_free_keys (int ,unsigned int,TYPE_4__*) ;
 int _kadm5_init_keys (TYPE_4__*,unsigned int) ;
 int hdb_entry_clear_password (int ,TYPE_3__*) ;
 int hdb_entry_set_pw_change_time (int ,TYPE_3__*,int ) ;
 scalar_t__ krb5_copy_keyblock_contents (int ,int *,int *) ;
 TYPE_4__* malloc (unsigned int) ;

kadm5_ret_t
_kadm5_set_keys3(kadm5_server_context *context,
   hdb_entry *ent,
   int n_keys,
   krb5_keyblock *keyblocks)
{
    krb5_error_code ret;
    int i;
    unsigned len;
    Key *keys;

    len = n_keys;
    keys = malloc (len * sizeof(*keys));
    if (keys == ((void*)0) && len != 0)
 return ENOMEM;

    _kadm5_init_keys (keys, len);

    for(i = 0; i < n_keys; i++) {
 keys[i].mkvno = ((void*)0);
 ret = krb5_copy_keyblock_contents (context->context,
        &keyblocks[i],
        &keys[i].key);
 if(ret)
     goto out;
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
