
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_kdc_configuration ;
typedef int krb5_error_code ;
typedef int krb5_data ;
typedef int krb5_context ;
typedef int hdb_entry_ex ;
struct TYPE_6__ {int (* client_access ) (int ,int ,int *,int *,char const*,int *,char const*,TYPE_1__*,int *) ;} ;
struct TYPE_5__ {scalar_t__ msg_type; } ;
typedef TYPE_1__ KDC_REQ ;


 int kdc_check_flags (int ,int *,int *,char const*,int *,char const*,int) ;
 scalar_t__ krb_as_req ;
 int stub1 (int ,int ,int *,int *,char const*,int *,char const*,TYPE_1__*,int *) ;
 int windcctx ;
 TYPE_2__* windcft ;

krb5_error_code
_kdc_check_access(krb5_context context,
    krb5_kdc_configuration *config,
    hdb_entry_ex *client_ex, const char *client_name,
    hdb_entry_ex *server_ex, const char *server_name,
    KDC_REQ *req,
    krb5_data *e_data)
{
    if (windcft == ((void*)0))
     return kdc_check_flags(context, config,
       client_ex, client_name,
       server_ex, server_name,
       req->msg_type == krb_as_req);

    return (windcft->client_access)(windcctx,
        context, config,
        client_ex, client_name,
        server_ex, server_name,
        req, e_data);
}
