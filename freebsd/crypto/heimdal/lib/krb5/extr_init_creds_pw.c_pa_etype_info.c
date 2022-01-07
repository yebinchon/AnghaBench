
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct pa_info_data {int dummy; } ;
struct TYPE_18__ {int length; int data; } ;
struct TYPE_20__ {TYPE_3__ saltvalue; int salttype; } ;
typedef TYPE_5__ krb5_salt ;
typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_21__ {int length; int data; } ;
typedef TYPE_6__ heim_octet_string ;
typedef int e ;
struct TYPE_16__ {size_t len; scalar_t__* val; } ;
struct TYPE_17__ {TYPE_1__ etype; } ;
struct TYPE_23__ {TYPE_2__ req_body; } ;
struct TYPE_22__ {size_t len; TYPE_4__* val; } ;
struct TYPE_19__ {scalar_t__ etype; TYPE_3__* salt; int * salttype; } ;
typedef TYPE_7__ ETYPE_INFO ;
typedef TYPE_8__ AS_REQ ;


 int KRB5_PW_SALT ;
 scalar_t__ decode_ETYPE_INFO (int ,int ,TYPE_7__*,size_t*) ;
 int free_ETYPE_INFO (TYPE_7__*) ;
 int krb5_free_salt (int ,TYPE_5__) ;
 scalar_t__ krb5_get_pw_salt (int ,int const,TYPE_5__*) ;
 int memset (TYPE_7__*,int ,int) ;
 scalar_t__ set_paid (struct pa_info_data*,int ,scalar_t__,int ,int ,int ,int *) ;

__attribute__((used)) static struct pa_info_data *
pa_etype_info(krb5_context context,
       const krb5_principal client,
       const AS_REQ *asreq,
       struct pa_info_data *paid,
       heim_octet_string *data)
{
    krb5_error_code ret;
    ETYPE_INFO e;
    size_t sz;
    size_t i, j;

    memset(&e, 0, sizeof(e));
    ret = decode_ETYPE_INFO(data->data, data->length, &e, &sz);
    if (ret)
 goto out;
    if (e.len == 0)
 goto out;
    for (j = 0; j < asreq->req_body.etype.len; j++) {
 for (i = 0; i < e.len; i++) {
     if (asreq->req_body.etype.val[j] == e.val[i].etype) {
  krb5_salt salt;
  salt.salttype = KRB5_PW_SALT;
  if (e.val[i].salt == ((void*)0))
      ret = krb5_get_pw_salt(context, client, &salt);
  else {
      salt.saltvalue = *e.val[i].salt;
      ret = 0;
  }
  if (e.val[i].salttype)
      salt.salttype = *e.val[i].salttype;
  if (ret == 0) {
      ret = set_paid(paid, context, e.val[i].etype,
       salt.salttype,
       salt.saltvalue.data,
       salt.saltvalue.length,
       ((void*)0));
      if (e.val[i].salt == ((void*)0))
   krb5_free_salt(context, salt);
  }
  if (ret == 0) {
      free_ETYPE_INFO(&e);
      return paid;
  }
     }
 }
    }
 out:
    free_ETYPE_INFO(&e);
    return ((void*)0);
}
