
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int enable_pkinit; int pkinit_kdc_revoke; int pkinit_kdc_cert_pool; int * pkinit_kdc_anchors; int * pkinit_kdc_identity; int * pkinit_kdc_friendly_name; } ;
typedef TYPE_1__ krb5_kdc_configuration ;
typedef int krb5_error_code ;
typedef int krb5_context ;


 int krb5_errx (int ,int,char*) ;
 int krb5_kdc_pk_initialize (int ,TYPE_1__*,int *,int *,int ,int ) ;
 void* strdup (char*) ;

krb5_error_code
krb5_kdc_pkinit_config(krb5_context context, krb5_kdc_configuration *config)
{
}
