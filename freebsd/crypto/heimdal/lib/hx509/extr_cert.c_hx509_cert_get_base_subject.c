
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int hx509_name ;
typedef int hx509_context ;
typedef TYPE_2__* hx509_cert ;
struct TYPE_5__ {int subject; } ;
struct TYPE_7__ {TYPE_1__ tbsCertificate; } ;
struct TYPE_6__ {TYPE_3__* data; scalar_t__ basename; } ;


 int HX509_PROXY_CERTIFICATE_NOT_CANONICALIZED ;
 int _hx509_name_from_Name (int *,int *) ;
 int hx509_name_copy (int ,scalar_t__,int *) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 scalar_t__ is_proxy_cert (int ,TYPE_3__*,int *) ;

int
hx509_cert_get_base_subject(hx509_context context, hx509_cert c,
       hx509_name *name)
{
    if (c->basename)
 return hx509_name_copy(context, c->basename, name);
    if (is_proxy_cert(context, c->data, ((void*)0)) == 0) {
 int ret = HX509_PROXY_CERTIFICATE_NOT_CANONICALIZED;
 hx509_set_error_string(context, 0, ret,
          "Proxy certificate have not been "
          "canonicalize yet, no base name");
 return ret;
    }
    return _hx509_name_from_Name(&c->data->tbsCertificate.subject, name);
}
