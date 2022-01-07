
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
typedef struct in_addr in6_addr ;
struct addrinfo {int ai_family; } ;


 int EAI_NONAME ;
 int PF_INET ;
 int PF_INET6 ;
 int PF_UNSPEC ;
 int add_one (int,int,int,struct addrinfo***,int ,struct in_addr*,int *) ;
 int const_v4 ;
 int const_v6 ;
 int inet_pton (int,char const*,struct in_addr*) ;

__attribute__((used)) static int
get_number (const char *nodename,
     const struct addrinfo *hints,
     int port, int protocol, int socktype,
     struct addrinfo **res)
{
    struct addrinfo *first = ((void*)0);
    struct addrinfo **current = &first;
    int family = PF_UNSPEC;
    int ret;

    if (hints != ((void*)0)) {
 family = hints->ai_family;
    }
    if (family == PF_INET || family == PF_UNSPEC) {
 struct in_addr v4_addr;

 if (inet_pton (PF_INET, nodename, &v4_addr) == 1) {
     ret = add_one (port, protocol, socktype,
      &current, const_v4, &v4_addr, ((void*)0));
     *res = first;
     return ret;
 }
    }
    return EAI_NONAME;
}
