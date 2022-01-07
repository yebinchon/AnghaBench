
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int kadm5_ret_t ;
struct TYPE_3__ {int context; scalar_t__ my_context; int caller; scalar_t__ client_name; scalar_t__ realm; scalar_t__ base_dn; scalar_t__ ccache; } ;
typedef TYPE_1__ kadm5_ad_context ;
typedef int LDAP ;


 int * CTX2LP (TYPE_1__*) ;
 int free (scalar_t__) ;
 int krb5_cc_destroy (int ,scalar_t__) ;
 int krb5_free_context (int ) ;
 int krb5_free_principal (int ,int ) ;
 int ldap_unbind (int *) ;

__attribute__((used)) static kadm5_ret_t
kadm5_ad_destroy(void *server_handle)
{
    kadm5_ad_context *context = server_handle;

    if (context->ccache)
 krb5_cc_destroy(context->context, context->ccache);
    free(context->realm);
    free(context->client_name);
    krb5_free_principal(context->context, context->caller);
    if(context->my_context)
 krb5_free_context(context->context);
    return 0;
}
