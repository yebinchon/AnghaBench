
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct store_ctx {int format; int f; } ;
typedef int hx509_private_key ;
typedef int hx509_context ;
typedef int hx509_cert ;
struct TYPE_4__ {int data; int length; } ;
typedef TYPE_1__ heim_octet_string ;


 int HX509_KEY_FORMAT_DER ;


 int _hx509_cert_private_key (int ) ;
 int _hx509_cert_private_key_exportable (int ) ;
 int _hx509_private_key_export (int ,int ,int ,TYPE_1__*) ;
 char* _hx509_private_pem_name (int ) ;
 int free (int ) ;
 int fwrite (int ,int ,int,int ) ;
 int hx509_cert_binary (int ,int ,TYPE_1__*) ;
 int hx509_pem_write (int ,char*,int *,int ,int ,int ) ;

__attribute__((used)) static int
store_func(hx509_context context, void *ctx, hx509_cert c)
{
    struct store_ctx *sc = ctx;
    heim_octet_string data;
    int ret;

    ret = hx509_cert_binary(context, c, &data);
    if (ret)
 return ret;

    switch (sc->format) {
    case 129:
 fwrite(data.data, data.length, 1, sc->f);
 free(data.data);
 break;
    case 128:
 hx509_pem_write(context, "CERTIFICATE", ((void*)0), sc->f,
   data.data, data.length);
 free(data.data);
 if (_hx509_cert_private_key_exportable(c)) {
     hx509_private_key key = _hx509_cert_private_key(c);
     ret = _hx509_private_key_export(context, key,
         HX509_KEY_FORMAT_DER, &data);
     if (ret)
  break;
     hx509_pem_write(context, _hx509_private_pem_name(key), ((void*)0), sc->f,
       data.data, data.length);
     free(data.data);
 }
 break;
    }

    return 0;
}
