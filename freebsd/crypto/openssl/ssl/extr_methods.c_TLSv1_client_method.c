
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_METHOD ;


 int const* tlsv1_client_method () ;

const SSL_METHOD *TLSv1_client_method(void)
{
    return tlsv1_client_method();
}
