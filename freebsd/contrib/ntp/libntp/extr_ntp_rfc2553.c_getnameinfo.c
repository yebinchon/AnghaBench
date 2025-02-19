
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct hostent {int h_name; } ;


 scalar_t__ AF_INET ;
 int EAI_AGAIN ;
 int EAI_FAIL ;
 int EAI_FAMILY ;
 scalar_t__ TRY_AGAIN ;
 struct hostent* gethostbyaddr (char const*,int,scalar_t__) ;
 scalar_t__ h_errno ;
 int strlcpy (char*,int ,size_t) ;

int
getnameinfo (const struct sockaddr *sa, u_int salen, char *host,
 size_t hostlen, char *serv, size_t servlen, int flags)
{
 struct hostent *hp;

 if (sa->sa_family != AF_INET)
  return (EAI_FAMILY);
 hp = gethostbyaddr(
     (const char *)&((const struct sockaddr_in *)sa)->sin_addr,
     4, AF_INET);
 if (hp == ((void*)0)) {
  if (h_errno == TRY_AGAIN)
   return (EAI_AGAIN);
  else
   return (EAI_FAIL);
 }
 if (host != ((void*)0) && hostlen > 0)
  strlcpy(host, hp->h_name, hostlen);
 return (0);
}
