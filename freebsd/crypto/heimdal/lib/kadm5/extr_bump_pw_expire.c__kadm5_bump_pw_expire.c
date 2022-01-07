
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_5__ {int context; } ;
typedef TYPE_1__ kadm5_server_context ;
typedef int kadm5_ret_t ;
struct TYPE_6__ {scalar_t__* pw_end; } ;
typedef TYPE_2__ hdb_entry ;


 scalar_t__ krb5_config_get_time_default (int ,int *,int,char*,char*,int *) ;
 scalar_t__ time (int *) ;

kadm5_ret_t
_kadm5_bump_pw_expire(kadm5_server_context *context,
        hdb_entry *ent)
{
    if (ent->pw_end != ((void*)0)) {
 time_t life;

 life = krb5_config_get_time_default(context->context,
         ((void*)0),
         365 * 24 * 60 * 60,
         "kadmin",
         "password_lifetime",
         ((void*)0));

 *(ent->pw_end) = time(((void*)0)) + life;
    }
    return 0;
}
