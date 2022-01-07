
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int krb5_boolean ;


 int FALSE ;
 int IN_LOOPBACKNET ;
 int TRUE ;
 int ntohl (int ) ;

__attribute__((used)) static krb5_boolean
ipv4_is_loopback (const struct sockaddr *sa)
{
    const struct sockaddr_in *sin4 = (const struct sockaddr_in *)sa;

    if ((ntohl(sin4->sin_addr.s_addr) >> 24) == IN_LOOPBACKNET)
 return TRUE;

    return FALSE;
}
