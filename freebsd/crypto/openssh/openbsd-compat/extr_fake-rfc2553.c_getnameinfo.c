
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpserv ;
struct sockaddr_in {int sin_addr; int sin_port; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct in_addr {int dummy; } ;
struct hostent {char* h_name; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_UNSPEC ;
 int EAI_FAMILY ;
 int EAI_MEMORY ;
 int EAI_NODATA ;
 int NI_NUMERICHOST ;
 struct hostent* gethostbyaddr (char*,int,scalar_t__) ;
 char* inet_ntoa (int ) ;
 int ntohs (int ) ;
 int snprintf (char*,int,char*,int) ;
 size_t strlcpy (char*,char*,size_t) ;

int getnameinfo(const struct sockaddr *sa, size_t salen, char *host,
  size_t hostlen, char *serv, size_t servlen, int flags)
{
 struct sockaddr_in *sin = (struct sockaddr_in *)sa;
 struct hostent *hp;
 char tmpserv[16];

 if (sa->sa_family != AF_UNSPEC && sa->sa_family != AF_INET)
  return (EAI_FAMILY);
 if (serv != ((void*)0)) {
  snprintf(tmpserv, sizeof(tmpserv), "%d", ntohs(sin->sin_port));
  if (strlcpy(serv, tmpserv, servlen) >= servlen)
   return (EAI_MEMORY);
 }

 if (host != ((void*)0)) {
  if (flags & NI_NUMERICHOST) {
   if (strlcpy(host, inet_ntoa(sin->sin_addr),
       hostlen) >= hostlen)
    return (EAI_MEMORY);
   else
    return (0);
  } else {
   hp = gethostbyaddr((char *)&sin->sin_addr,
       sizeof(struct in_addr), AF_INET);
   if (hp == ((void*)0))
    return (EAI_NODATA);

   if (strlcpy(host, hp->h_name, hostlen) >= hostlen)
    return (EAI_MEMORY);
   else
    return (0);
  }
 }
 return (0);
}
