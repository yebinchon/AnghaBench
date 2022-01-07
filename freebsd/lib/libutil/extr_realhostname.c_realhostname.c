
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trimmed ;
struct in_addr {int dummy; } ;
struct hostent {int ** h_addr_list; int h_name; } ;
typedef int lookup ;


 int AF_INET ;
 int HOSTNAME_FOUND ;
 int HOSTNAME_INCORRECTNAME ;
 int HOSTNAME_INVALIDADDR ;
 int HOSTNAME_INVALIDNAME ;
 int MAXHOSTNAMELEN ;
 struct hostent* gethostbyaddr (char const*,int,int ) ;
 struct hostent* gethostbyname (char*) ;
 char* inet_ntoa (struct in_addr const) ;
 int memcmp (int *,struct in_addr const*,int) ;
 int strlcpy (char*,int ,int) ;
 size_t strlen (char*) ;
 int strncpy (char*,char*,size_t) ;
 int trimdomain (char*,size_t) ;

int
realhostname(char *host, size_t hsize, const struct in_addr *ip)
{
 char trimmed[MAXHOSTNAMELEN];
 int result;
 struct hostent *hp;

 result = HOSTNAME_INVALIDADDR;
 hp = gethostbyaddr((const char *)ip, sizeof(*ip), AF_INET);

 if (hp != ((void*)0)) {
  strlcpy(trimmed, hp->h_name, sizeof(trimmed));
  trimdomain(trimmed, strlen(trimmed));
  if (strlen(trimmed) <= hsize) {
   char lookup[MAXHOSTNAMELEN];

   strlcpy(lookup, hp->h_name, sizeof(lookup));
   hp = gethostbyname(lookup);
   if (hp == ((void*)0))
    result = HOSTNAME_INVALIDNAME;
   else for (; ; hp->h_addr_list++) {
    if (*hp->h_addr_list == ((void*)0)) {
     result = HOSTNAME_INCORRECTNAME;
     break;
    }
    if (!memcmp(*hp->h_addr_list, ip, sizeof(*ip))) {
     strncpy(host, trimmed, hsize);
     return HOSTNAME_FOUND;
    }
   }
  }
 }

 strncpy(host, inet_ntoa(*ip), hsize);

 return result;
}
