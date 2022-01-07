
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int caller; int context; } ;
typedef TYPE_1__ kadm5_server_context ;
typedef int kadm5_ret_t ;
struct TYPE_8__ {TYPE_3__* modified_by; } ;
typedef TYPE_2__ hdb_entry ;
struct TYPE_9__ {int principal; int time; } ;


 int ENOMEM ;
 int free_Event (TYPE_3__*) ;
 int krb5_copy_principal (int ,int ,int *) ;
 TYPE_3__* malloc (int) ;
 int time (int *) ;

kadm5_ret_t
_kadm5_set_modifier(kadm5_server_context *context,
      hdb_entry *ent)
{
    kadm5_ret_t ret;
    if(ent->modified_by == ((void*)0)){
 ent->modified_by = malloc(sizeof(*ent->modified_by));
 if(ent->modified_by == ((void*)0))
     return ENOMEM;
    } else
 free_Event(ent->modified_by);
    ent->modified_by->time = time(((void*)0));
    ret = krb5_copy_principal(context->context, context->caller,
         &ent->modified_by->principal);
    return ret;
}
