
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;
struct addrinfo {int ai_family; int ai_flags; } ;


 int EAI_NONAME ;
 int PF_INET ;
 int PF_INET6 ;
 int PF_UNSPEC ;
 int add_hostent (int,int,int,struct addrinfo***,int ,struct hostent*,int*) ;
 int const_v4 ;
 int const_v6 ;
 int freehostent (struct hostent*) ;
 struct hostent* getipnodebyname (char const*,int,int ,int*) ;

__attribute__((used)) static int
get_nodes (const char *nodename,
    const struct addrinfo *hints,
    int port, int protocol, int socktype,
    struct addrinfo **res)
{
    struct addrinfo *first = ((void*)0);
    struct addrinfo **current = &first;
    int family = PF_UNSPEC;
    int flags = 0;
    int ret = EAI_NONAME;
    int error;

    if (hints != ((void*)0)) {
 family = hints->ai_family;
 flags = hints->ai_flags;
    }
    if (family == PF_INET || family == PF_UNSPEC) {
 struct hostent *he;

 he = getipnodebyname (nodename, PF_INET, 0, &error);

 if (he != ((void*)0)) {
     ret = add_hostent (port, protocol, socktype,
          &current, const_v4, he, &flags);
     freehostent (he);
 }
    }
    *res = first;
    return ret;
}
