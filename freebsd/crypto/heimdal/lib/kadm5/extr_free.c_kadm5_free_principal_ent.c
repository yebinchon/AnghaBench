
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* tl_data_contents; int tl_data_length; struct TYPE_8__* tl_data_next; } ;
typedef TYPE_1__ krb5_tl_data ;
struct TYPE_9__ {int context; } ;
typedef TYPE_2__ kadm5_server_context ;
typedef TYPE_3__* kadm5_principal_ent_t ;
struct TYPE_10__ {TYPE_1__* key_data; scalar_t__ n_tl_data; TYPE_1__* tl_data; int n_key_data; int mod_name; int principal; } ;


 int free (TYPE_1__*) ;
 int kadm5_free_key_data (void*,int *,TYPE_1__*) ;
 int krb5_free_principal (int ,int ) ;
 int memset (TYPE_1__*,int ,int ) ;

void
kadm5_free_principal_ent(void *server_handle,
    kadm5_principal_ent_t princ)
{
    kadm5_server_context *context = server_handle;
    if(princ->principal)
 krb5_free_principal(context->context, princ->principal);
    if(princ->mod_name)
 krb5_free_principal(context->context, princ->mod_name);
    kadm5_free_key_data(server_handle, &princ->n_key_data, princ->key_data);
    while(princ->n_tl_data && princ->tl_data) {
 krb5_tl_data *tp;
 tp = princ->tl_data;
 princ->tl_data = tp->tl_data_next;
 princ->n_tl_data--;
 memset(tp->tl_data_contents, 0, tp->tl_data_length);
 free(tp->tl_data_contents);
 free(tp);
    }
    if (princ->key_data != ((void*)0))
 free (princ->key_data);
}
