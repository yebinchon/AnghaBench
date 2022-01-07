
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;
struct in6_addr {int s_addr; } ;
struct addrinfo {int ai_family; int ai_flags; } ;


 int AI_PASSIVE ;
 int INADDR_ANY ;
 int INADDR_LOOPBACK ;
 int PF_INET ;
 int PF_INET6 ;
 int PF_UNSPEC ;
 int add_one (int,int,int,struct addrinfo***,int ,struct in_addr*,int *) ;
 int const_v4 ;
 int const_v6 ;
 int htonl (int ) ;
 struct in_addr in6addr_any ;
 struct in_addr in6addr_loopback ;

__attribute__((used)) static int
get_null (const struct addrinfo *hints,
   int port, int protocol, int socktype,
   struct addrinfo **res)
{
    struct in_addr v4_addr;



    struct addrinfo *first = ((void*)0);
    struct addrinfo **current = &first;
    int family = PF_UNSPEC;
    int ret;

    if (hints != ((void*)0))
 family = hints->ai_family;

    if (hints && hints->ai_flags & AI_PASSIVE) {
 v4_addr.s_addr = INADDR_ANY;



    } else {
 v4_addr.s_addr = htonl(INADDR_LOOPBACK);



    }







    if (family == PF_INET || family == PF_UNSPEC) {
 ret = add_one (port, protocol, socktype,
         &current, const_v4, &v4_addr, ((void*)0));
    }
    *res = first;
    return 0;
}
