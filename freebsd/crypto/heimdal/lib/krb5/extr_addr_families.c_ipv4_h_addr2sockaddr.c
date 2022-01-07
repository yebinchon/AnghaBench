
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct in_addr {int dummy; } ;
struct sockaddr_in {int sin_port; struct in_addr sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int krb5_socklen_t ;


 int AF_INET ;
 int memcpy (struct sockaddr*,struct sockaddr_in*,int ) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int min (int,int) ;

__attribute__((used)) static void
ipv4_h_addr2sockaddr(const char *addr,
       struct sockaddr *sa,
       krb5_socklen_t *sa_size,
       int port)
{
    struct sockaddr_in tmp;

    memset (&tmp, 0, sizeof(tmp));
    tmp.sin_family = AF_INET;
    tmp.sin_port = port;
    tmp.sin_addr = *((const struct in_addr *)addr);
    memcpy(sa, &tmp, min(sizeof(tmp), *sa_size));
    *sa_size = sizeof(tmp);
}
