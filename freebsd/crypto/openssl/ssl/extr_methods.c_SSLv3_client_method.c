
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_METHOD ;


 int const* sslv3_client_method () ;

const SSL_METHOD *SSLv3_client_method(void)
{
    return sslv3_client_method();
}
