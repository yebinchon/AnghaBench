
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* kadm5_principal_ent_t ;
struct TYPE_6__ {int attributes; int pw_expiration; int princ_expire_time; int max_renewable_life; int max_life; } ;


 int KADM5_ATTRIBUTES ;
 int KADM5_MAX_LIFE ;
 int KADM5_MAX_RLIFE ;
 int KADM5_PRINC_EXPIRE_TIME ;
 int KADM5_PW_EXPIRATION ;
 scalar_t__ edit_attributes (char*,int *,int*,int ) ;
 scalar_t__ edit_deltat (char*,int *,int*,int ) ;
 scalar_t__ edit_timet (char*,int *,int*,int ) ;
 int set_defaults (TYPE_1__*,int*,TYPE_1__*,int) ;

int
edit_entry(kadm5_principal_ent_t ent, int *mask,
    kadm5_principal_ent_t default_ent, int default_mask)
{

    set_defaults(ent, mask, default_ent, default_mask);

    if(edit_deltat ("Max ticket life", &ent->max_life, mask,
      KADM5_MAX_LIFE) != 0)
 return 1;

    if(edit_deltat ("Max renewable life", &ent->max_renewable_life, mask,
      KADM5_MAX_RLIFE) != 0)
 return 1;

    if(edit_timet ("Principal expiration time", &ent->princ_expire_time, mask,
     KADM5_PRINC_EXPIRE_TIME) != 0)
 return 1;

    if(edit_timet ("Password expiration time", &ent->pw_expiration, mask,
     KADM5_PW_EXPIRATION) != 0)
 return 1;

    if(edit_attributes ("Attributes", &ent->attributes, mask,
   KADM5_ATTRIBUTES) != 0)
 return 1;

    return 0;
}
