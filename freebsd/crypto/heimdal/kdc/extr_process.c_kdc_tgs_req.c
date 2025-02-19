
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef int krb5_kdc_configuration ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_5__ {int length; int data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;
typedef int KDC_REQ ;


 scalar_t__ _kdc_tgs_rep (int ,int *,int *,TYPE_1__*,char const*,struct sockaddr*,int) ;
 scalar_t__ decode_TGS_REQ (int ,int ,int *,size_t*) ;
 int free_TGS_REQ (int *) ;

__attribute__((used)) static krb5_error_code
kdc_tgs_req(krb5_context context,
     krb5_kdc_configuration *config,
     krb5_data *req_buffer,
     krb5_data *reply,
     const char *from,
     struct sockaddr *addr,
     int datagram_reply,
     int *claim)
{
    krb5_error_code ret;
    KDC_REQ req;
    size_t len;

    ret = decode_TGS_REQ(req_buffer->data, req_buffer->length, &req, &len);
    if (ret)
 return ret;

    *claim = 1;

    ret = _kdc_tgs_rep(context, config, &req, reply,
         from, addr, datagram_reply);
    free_TGS_REQ(&req);
    return ret;
}
