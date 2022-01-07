
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {char** h_addr_list; int h_addrtype; int h_length; } ;
struct addrinfo {int dummy; } ;


 int AI_CANONNAME ;
 int EAI_MEMORY ;
 int add_one (int,int,int,struct addrinfo***,int (*) (struct addrinfo*,void*,int),char*,char*) ;
 int freehostent (struct hostent*) ;
 struct hostent* getipnodebyaddr (char*,int ,int ,int*) ;
 char* hostent_find_fqdn (struct hostent*) ;
 int * strchr (char const*,char) ;
 char* strdup (char const*) ;

__attribute__((used)) static int
add_hostent (int port, int protocol, int socktype,
      struct addrinfo ***current,
      int (*func)(struct addrinfo *, void *data, int port),
      struct hostent *he, int *flags)
{
    int ret;
    char *canonname = ((void*)0);
    char **h;

    if (*flags & AI_CANONNAME) {
 struct hostent *he2 = ((void*)0);
 const char *tmp_canon;

 tmp_canon = hostent_find_fqdn (he);
 if (strchr (tmp_canon, '.') == ((void*)0)) {
     int error;

     he2 = getipnodebyaddr (he->h_addr_list[0], he->h_length,
       he->h_addrtype, &error);
     if (he2 != ((void*)0)) {
  const char *tmp = hostent_find_fqdn (he2);

  if (strchr (tmp, '.') != ((void*)0))
      tmp_canon = tmp;
     }
 }

 canonname = strdup (tmp_canon);
 if (he2 != ((void*)0))
     freehostent (he2);
 if (canonname == ((void*)0))
     return EAI_MEMORY;
    }

    for (h = he->h_addr_list; *h != ((void*)0); ++h) {
 ret = add_one (port, protocol, socktype,
         current, func, *h, canonname);
 if (ret)
     return ret;
 if (*flags & AI_CANONNAME) {
     *flags &= ~AI_CANONNAME;
     canonname = ((void*)0);
 }
    }
    return 0;
}
