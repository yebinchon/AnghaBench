
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sockaddr_in6 {int sin6_scope_id; } ;
struct afd {int a_scoped; } ;
struct addrinfo {scalar_t__ ai_family; scalar_t__ ai_addr; struct addrinfo* ai_next; } ;


 scalar_t__ AF_INET6 ;
 int EAI_MEMORY ;
 int EAI_NONAME ;
 int SCOPE_DELIMITER ;
 int explore_numeric (struct addrinfo const*,char const*,char const*,struct addrinfo**,char const*) ;
 struct afd* find_afd (scalar_t__) ;
 int free (char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 int ip6_str2scopeid (char*,struct sockaddr_in6*,int *) ;
 char* strchr (char const*,int ) ;
 char* strdup (char const*) ;

__attribute__((used)) static int
explore_numeric_scope(const struct addrinfo *pai, const char *hostname,
    const char *servname, struct addrinfo **res)
{

 return explore_numeric(pai, hostname, servname, res, hostname);
}
