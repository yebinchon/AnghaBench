
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hx509_context ;
typedef int hx509_cert ;


 int _hx509_get_cert (int ) ;
 int check_key_usage (int ,int ,unsigned int,int) ;

int
_hx509_check_key_usage(hx509_context context, hx509_cert cert,
         unsigned flags, int req_present)
{
    return check_key_usage(context, _hx509_get_cert(cert), flags, req_present);
}
