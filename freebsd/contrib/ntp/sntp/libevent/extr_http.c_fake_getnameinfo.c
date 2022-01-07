
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpserv ;
struct sockaddr_in {int sin_addr; int sin_port; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int dummy; } ;
struct hostent {char* h_name; } ;


 int AF_INET ;
 int NI_NUMERICHOST ;
 int evutil_snprintf (char*,int,char*,int ) ;
 struct hostent* gethostbyaddr (char*,int,int ) ;
 char* inet_ntoa (int ) ;
 int ntohs (int ) ;
 size_t strlcpy (char*,char*,size_t) ;

__attribute__((used)) static int
fake_getnameinfo(const struct sockaddr *sa, size_t salen, char *host,
 size_t hostlen, char *serv, size_t servlen, int flags)
{
 struct sockaddr_in *sin = (struct sockaddr_in *)sa;

 if (serv != ((void*)0)) {
  char tmpserv[16];
  evutil_snprintf(tmpserv, sizeof(tmpserv),
      "%d", ntohs(sin->sin_port));
  if (strlcpy(serv, tmpserv, servlen) >= servlen)
   return (-1);
 }

 if (host != ((void*)0)) {
  if (flags & NI_NUMERICHOST) {
   if (strlcpy(host, inet_ntoa(sin->sin_addr),
       hostlen) >= hostlen)
    return (-1);
   else
    return (0);
  } else {
   struct hostent *hp;
   hp = gethostbyaddr((char *)&sin->sin_addr,
       sizeof(struct in_addr), AF_INET);
   if (hp == ((void*)0))
    return (-2);

   if (strlcpy(host, hp->h_name, hostlen) >= hostlen)
    return (-1);
   else
    return (0);
  }
 }
 return (0);
}
