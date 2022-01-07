
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int krb5_principal ;
typedef int krb5_pac ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int hdb_entry_ex ;
struct TYPE_2__ {scalar_t__ (* pac_verify ) (int ,int ,int const,int const,int *,int *,int *,int *) ;} ;


 scalar_t__ stub1 (int ,int ,int const,int const,int *,int *,int *,int *) ;
 int windcctx ;
 TYPE_1__* windcft ;

krb5_error_code
_kdc_pac_verify(krb5_context context,
  const krb5_principal client_principal,
  const krb5_principal delegated_proxy_principal,
  hdb_entry_ex *client,
  hdb_entry_ex *server,
  hdb_entry_ex *krbtgt,
  krb5_pac *pac,
  int *verified)
{
    krb5_error_code ret;

    if (windcft == ((void*)0))
 return 0;

    ret = windcft->pac_verify(windcctx, context,
         client_principal,
         delegated_proxy_principal,
         client, server, krbtgt, pac);
    if (ret == 0)
 *verified = 1;
    return ret;
}
