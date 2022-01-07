
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int krb5_kdc_configuration ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int * krb5_const_principal ;
struct TYPE_14__ {int * principal; } ;
struct TYPE_11__ {TYPE_6__ entry; } ;
typedef TYPE_1__ hdb_entry_ex ;
struct TYPE_13__ {scalar_t__ (* hdb_check_constrained_delegation ) (int ,TYPE_3__*,TYPE_1__*,int *) ;} ;
struct TYPE_12__ {size_t len; int * val; } ;
typedef TYPE_2__ HDB_Ext_Constrained_delegation_acl ;
typedef TYPE_3__ HDB ;


 scalar_t__ KRB5KDC_ERR_BADOPTION ;
 scalar_t__ TRUE ;
 scalar_t__ hdb_entry_get_ConstrainedDelegACL (TYPE_6__*,TYPE_2__ const**) ;
 int kdc_log (int ,int *,int ,char*) ;
 int krb5_clear_error_message (int ) ;
 scalar_t__ krb5_principal_compare (int ,int *,int *) ;
 int krb5_realm_compare (int ,int *,int *) ;
 scalar_t__ stub1 (int ,TYPE_3__*,TYPE_1__*,int *) ;

__attribute__((used)) static krb5_error_code
check_constrained_delegation(krb5_context context,
        krb5_kdc_configuration *config,
        HDB *clientdb,
        hdb_entry_ex *client,
        hdb_entry_ex *server,
        krb5_const_principal target)
{
    const HDB_Ext_Constrained_delegation_acl *acl;
    krb5_error_code ret;
    size_t i;







    if(!krb5_realm_compare(context, client->entry.principal, server->entry.principal)) {
 ret = KRB5KDC_ERR_BADOPTION;
 kdc_log(context, config, 0,
     "Bad request for constrained delegation");
 return ret;
    }

    if (clientdb->hdb_check_constrained_delegation) {
 ret = clientdb->hdb_check_constrained_delegation(context, clientdb, client, target);
 if (ret == 0)
     return 0;
    } else {

 if (krb5_principal_compare(context, client->entry.principal, server->entry.principal) == TRUE)
     return 0;

 ret = hdb_entry_get_ConstrainedDelegACL(&client->entry, &acl);
 if (ret) {
     krb5_clear_error_message(context);
     return ret;
 }

 if (acl) {
     for (i = 0; i < acl->len; i++) {
  if (krb5_principal_compare(context, target, &acl->val[i]) == TRUE)
      return 0;
     }
 }
 ret = KRB5KDC_ERR_BADOPTION;
    }
    kdc_log(context, config, 0,
     "Bad request for constrained delegation");
    return ret;
}
