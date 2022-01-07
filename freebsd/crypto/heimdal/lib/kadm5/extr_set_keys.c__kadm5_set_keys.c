
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int db; int context; } ;
typedef TYPE_2__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
struct TYPE_8__ {size_t len; int * val; } ;
struct TYPE_10__ {TYPE_1__ keys; int principal; } ;
typedef TYPE_3__ hdb_entry ;
typedef int Key ;


 int FALSE ;
 int _kadm5_free_keys (int ,size_t,int *) ;
 scalar_t__ hdb_entry_set_password (int ,int ,TYPE_3__*,char const*) ;
 int hdb_entry_set_pw_change_time (int ,TYPE_3__*,int ) ;
 scalar_t__ hdb_generate_key_set_password (int ,int ,char const*,int **,size_t*) ;
 scalar_t__ krb5_config_get_bool_default (int ,int *,int ,char*,char*,int *) ;

kadm5_ret_t
_kadm5_set_keys(kadm5_server_context *context,
  hdb_entry *ent,
  const char *password)
{
    Key *keys;
    size_t num_keys;
    kadm5_ret_t ret;

    ret = hdb_generate_key_set_password(context->context,
     ent->principal,
     password, &keys, &num_keys);
    if (ret)
 return ret;

    _kadm5_free_keys (context->context, ent->keys.len, ent->keys.val);
    ent->keys.val = keys;
    ent->keys.len = num_keys;

    hdb_entry_set_pw_change_time(context->context, ent, 0);

    if (krb5_config_get_bool_default(context->context, ((void*)0), FALSE,
         "kadmin", "save-password", ((void*)0)))
    {
 ret = hdb_entry_set_password(context->context, context->db,
         ent, password);
 if (ret)
     return ret;
    }

    return 0;
}
