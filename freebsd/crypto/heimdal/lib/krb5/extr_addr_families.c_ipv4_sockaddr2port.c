
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_port; } ;
struct sockaddr {int dummy; } ;
typedef int krb5_error_code ;
typedef int int16_t ;



__attribute__((used)) static krb5_error_code
ipv4_sockaddr2port (const struct sockaddr *sa, int16_t *port)
{
    const struct sockaddr_in *sin4 = (const struct sockaddr_in *)sa;

    *port = sin4->sin_port;
    return 0;
}
