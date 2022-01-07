
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_context ;
typedef int hx509_cert ;
typedef int ExtKeyUsage ;


 int HX509_EXTENSION_NOT_FOUND ;
 int _hx509_get_cert (int ) ;
 int find_extension_eku (int ,int *) ;
 int hx509_clear_error_string (int ) ;
 int memset (int *,int ,int) ;

int
_hx509_cert_get_eku(hx509_context context,
      hx509_cert cert,
      ExtKeyUsage *e)
{
    int ret;

    memset(e, 0, sizeof(*e));

    ret = find_extension_eku(_hx509_get_cert(cert), e);
    if (ret && ret != HX509_EXTENSION_NOT_FOUND) {
 hx509_clear_error_string(context);
 return ret;
    }
    return 0;
}
