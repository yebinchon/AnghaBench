
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_3__ {int ca_names; } ;
typedef TYPE_1__ SSL ;


 int add_ca_name (int *,int const*) ;

int SSL_add1_to_CA_list(SSL *ssl, const X509 *x)
{
    return add_ca_name(&ssl->ca_names, x);
}
