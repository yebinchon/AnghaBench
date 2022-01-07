
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
typedef int addr_str ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int errx (int,char*) ;
 char* inet_ntop (scalar_t__,int *,char*,int) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *
print_addr (const struct sockaddr *sa)
{
    char addr_str[256];
    char *res;
    const char *as = ((void*)0);

    if(sa->sa_family == AF_INET)
 as = inet_ntop (sa->sa_family, &((struct sockaddr_in*)sa)->sin_addr,
   addr_str, sizeof(addr_str));





    if(as == ((void*)0))
 return ((void*)0);
    res = strdup(as);
    if (res == ((void*)0))
 errx (1, "malloc: out of memory");
    return res;
}
