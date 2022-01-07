
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int * krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_13__ {int member_0; int member_1; } ;
typedef TYPE_2__ krb5_data ;
typedef int krb5_context ;
typedef int gss_buffer_t ;
struct TYPE_12__ {int realm; int sname; } ;
struct TYPE_14__ {TYPE_1__ ticket; } ;
typedef scalar_t__ OM_uint32 ;
typedef TYPE_3__ AP_REQ ;


 int GSS_KRB5_MECHANISM ;
 scalar_t__ GSS_S_CONTINUE_NEEDED ;
 scalar_t__ GSS_S_FAILURE ;
 scalar_t__ _gsskrb5_encapsulate (scalar_t__*,TYPE_2__*,int ,char*,int ) ;
 scalar_t__ _krb5_principalname2krb5_principal (int ,int **,int ,int ) ;
 int free_AP_REQ (TYPE_3__*) ;
 int krb5_data_free (TYPE_2__*) ;
 scalar_t__ krb5_decode_ap_req (int ,TYPE_2__*,TYPE_3__*) ;
 int krb5_free_principal (int ,int *) ;
 scalar_t__ krb5_mk_error (int ,scalar_t__,int *,TYPE_2__*,int *,int *,int *,int *,TYPE_2__*) ;
 int rk_UNCONST (char*) ;

__attribute__((used)) static OM_uint32
send_error_token(OM_uint32 *minor_status,
   krb5_context context,
   krb5_error_code kret,
   krb5_principal server,
   krb5_data *indata,
   gss_buffer_t output_token)
{
    krb5_principal ap_req_server = ((void*)0);
    krb5_error_code ret;
    krb5_data outbuf;



    krb5_data e_data = { 7, rk_UNCONST("\x30\x05\xa1\x03\x02\x01\x02") };


    if (server == ((void*)0)) {
 AP_REQ ap_req;

 ret = krb5_decode_ap_req(context, indata, &ap_req);
 if (ret) {
     *minor_status = ret;
     return GSS_S_FAILURE;
 }
 ret = _krb5_principalname2krb5_principal(context,
        &ap_req_server,
        ap_req.ticket.sname,
        ap_req.ticket.realm);
 free_AP_REQ(&ap_req);
 if (ret) {
     *minor_status = ret;
     return GSS_S_FAILURE;
 }
 server = ap_req_server;
    }

    ret = krb5_mk_error(context, kret, ((void*)0), &e_data, ((void*)0),
   server, ((void*)0), ((void*)0), &outbuf);
    if (ap_req_server)
 krb5_free_principal(context, ap_req_server);
    if (ret) {
 *minor_status = ret;
 return GSS_S_FAILURE;
    }

    ret = _gsskrb5_encapsulate(minor_status,
          &outbuf,
          output_token,
          "\x03\x00",
          GSS_KRB5_MECHANISM);
    krb5_data_free (&outbuf);
    if (ret)
 return ret;

    *minor_status = 0;
    return GSS_S_CONTINUE_NEEDED;
}
