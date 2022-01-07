
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct afd {size_t a_off; } ;
typedef size_t socklen_t ;


 int EAI_MEMORY ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static int
getnameinfo_un(const struct afd *afd,
    const struct sockaddr *sa, socklen_t salen,
    char *host, size_t hostlen, char *serv, size_t servlen, int flags)
{
 size_t pathlen;

 if (serv != ((void*)0) && servlen > 0)
  *serv = '\0';
 if (host != ((void*)0) && hostlen > 0) {
  pathlen = salen - afd->a_off;

  if (pathlen + 1 > hostlen) {
   *host = '\0';
   return (EAI_MEMORY);
  }
  strlcpy(host, (const char *)sa + afd->a_off, pathlen + 1);
 }

 return (0);
}
