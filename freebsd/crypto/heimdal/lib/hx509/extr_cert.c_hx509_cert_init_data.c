
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_context ;
typedef int hx509_cert ;
typedef int Certificate ;


 int HX509_EXTRA_DATA_AFTER_STRUCTURE ;
 int decode_Certificate (void const*,size_t,int *,size_t*) ;
 int free_Certificate (int *) ;
 int hx509_cert_init (int ,int *,int *) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

int
hx509_cert_init_data(hx509_context context,
       const void *ptr,
       size_t len,
       hx509_cert *cert)
{
    Certificate t;
    size_t size;
    int ret;

    ret = decode_Certificate(ptr, len, &t, &size);
    if (ret) {
 hx509_set_error_string(context, 0, ret, "Failed to decode certificate");
 return ret;
    }
    if (size != len) {
 free_Certificate(&t);
 hx509_set_error_string(context, 0, HX509_EXTRA_DATA_AFTER_STRUCTURE,
          "Extra data after certificate");
 return HX509_EXTRA_DATA_AFTER_STRUCTURE;
    }

    ret = hx509_cert_init(context, &t, cert);
    free_Certificate(&t);
    return ret;
}
