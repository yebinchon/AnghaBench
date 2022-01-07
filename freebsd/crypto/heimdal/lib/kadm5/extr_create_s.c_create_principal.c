
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_17__ {int caller; int context; } ;
typedef TYPE_3__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
typedef TYPE_4__* kadm5_principal_ent_t ;
typedef int kadm5_principal_ent_rec ;
struct TYPE_15__ {int principal; int time; } ;
struct TYPE_16__ {TYPE_1__ created_by; int principal; } ;
struct TYPE_19__ {TYPE_2__ entry; } ;
typedef TYPE_5__ hdb_entry_ex ;
struct TYPE_18__ {int principal; int policy; } ;


 int KADM5_ATTRIBUTES ;
 scalar_t__ KADM5_BAD_MASK ;
 int KADM5_MAX_LIFE ;
 int KADM5_MAX_RLIFE ;
 int KADM5_POLICY ;
 scalar_t__ KADM5_UNK_POLICY ;
 scalar_t__ _kadm5_setup_entry (TYPE_3__*,TYPE_5__*,int,TYPE_4__*,int,int *,int) ;
 scalar_t__ get_default (TYPE_3__*,int ,int *) ;
 int kadm5_free_principal_ent (TYPE_3__*,int *) ;
 scalar_t__ krb5_copy_principal (int ,int ,int *) ;
 int memset (TYPE_5__*,int ,int) ;
 scalar_t__ strcmp (int ,char*) ;
 int time (int *) ;

__attribute__((used)) static kadm5_ret_t
create_principal(kadm5_server_context *context,
   kadm5_principal_ent_t princ,
   uint32_t mask,
   hdb_entry_ex *ent,
   uint32_t required_mask,
   uint32_t forbidden_mask)
{
    kadm5_ret_t ret;
    kadm5_principal_ent_rec defrec, *defent;
    uint32_t def_mask;

    if((mask & required_mask) != required_mask)
 return KADM5_BAD_MASK;
    if((mask & forbidden_mask))
 return KADM5_BAD_MASK;
    if((mask & KADM5_POLICY) && strcmp(princ->policy, "default"))

 return KADM5_UNK_POLICY;
    memset(ent, 0, sizeof(*ent));
    ret = krb5_copy_principal(context->context, princ->principal,
          &ent->entry.principal);
    if(ret)
 return ret;

    defent = &defrec;
    ret = get_default(context, princ->principal, defent);
    if(ret) {
 defent = ((void*)0);
 def_mask = 0;
    } else {
 def_mask = KADM5_ATTRIBUTES | KADM5_MAX_LIFE | KADM5_MAX_RLIFE;
    }

    ret = _kadm5_setup_entry(context,
        ent, mask | def_mask,
        princ, mask,
        defent, def_mask);
    if(defent)
 kadm5_free_principal_ent(context, defent);
    if (ret)
 return ret;

    ent->entry.created_by.time = time(((void*)0));

    return krb5_copy_principal(context->context, context->caller,
          &ent->entry.created_by.principal);
}
