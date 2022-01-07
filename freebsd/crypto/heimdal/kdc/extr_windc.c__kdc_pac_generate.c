
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * krb5_pac ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int hdb_entry_ex ;
struct TYPE_2__ {int (* pac_generate ) (int ,int ,int *,int **) ;} ;


 int stub1 (int ,int ,int *,int **) ;
 int windcctx ;
 TYPE_1__* windcft ;

krb5_error_code
_kdc_pac_generate(krb5_context context,
    hdb_entry_ex *client,
    krb5_pac *pac)
{
    *pac = ((void*)0);
    if (windcft == ((void*)0))
 return 0;
    return (windcft->pac_generate)(windcctx, context, client, pac);
}
