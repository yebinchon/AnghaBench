
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; void* sin6_port; int sin6_family; int sin_addr; void* sin_port; int sin_family; } ;
struct sockaddr_in {int sin6_addr; void* sin6_port; int sin6_family; int sin_addr; void* sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {scalar_t__ h_addrtype; int h_length; scalar_t__ h_name; scalar_t__* h_addr_list; } ;
struct evutil_addrinfo {int ai_flags; int * ai_canonname; } ;
typedef int sin6 ;
typedef int sin ;


 int AF_INET ;
 int AF_INET6 ;
 int EVUTIL_AI_CANONNAME ;
 scalar_t__ PF_INET ;
 scalar_t__ PF_INET6 ;
 int event_warnx (char*) ;
 struct evutil_addrinfo* evutil_addrinfo_append_ (struct evutil_addrinfo*,struct evutil_addrinfo*) ;
 int evutil_freeaddrinfo (struct evutil_addrinfo*) ;
 struct evutil_addrinfo* evutil_new_addrinfo_ (struct sockaddr*,int,struct evutil_addrinfo const*) ;
 void* htons (int) ;
 int memcpy (void*,scalar_t__,int) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 int * mm_strdup (scalar_t__) ;

__attribute__((used)) static struct evutil_addrinfo *
addrinfo_from_hostent(const struct hostent *ent,
    int port, const struct evutil_addrinfo *hints)
{
 int i;
 struct sockaddr_in sin;
 struct sockaddr_in6 sin6;
 struct sockaddr *sa;
 int socklen;
 struct evutil_addrinfo *res=((void*)0), *ai;
 void *addrp;

 if (ent->h_addrtype == PF_INET) {
  memset(&sin, 0, sizeof(sin));
  sin.sin_family = AF_INET;
  sin.sin_port = htons(port);
  sa = (struct sockaddr *)&sin;
  socklen = sizeof(struct sockaddr_in);
  addrp = &sin.sin_addr;
  if (ent->h_length != sizeof(sin.sin_addr)) {
   event_warnx("Weird h_length from gethostbyname");
   return ((void*)0);
  }
 } else if (ent->h_addrtype == PF_INET6) {
  memset(&sin6, 0, sizeof(sin6));
  sin6.sin6_family = AF_INET6;
  sin6.sin6_port = htons(port);
  sa = (struct sockaddr *)&sin6;
  socklen = sizeof(struct sockaddr_in);
  addrp = &sin6.sin6_addr;
  if (ent->h_length != sizeof(sin6.sin6_addr)) {
   event_warnx("Weird h_length from gethostbyname");
   return ((void*)0);
  }
 } else
  return ((void*)0);

 for (i = 0; ent->h_addr_list[i]; ++i) {
  memcpy(addrp, ent->h_addr_list[i], ent->h_length);
  ai = evutil_new_addrinfo_(sa, socklen, hints);
  if (!ai) {
   evutil_freeaddrinfo(res);
   return ((void*)0);
  }
  res = evutil_addrinfo_append_(res, ai);
 }

 if (res && ((hints->ai_flags & EVUTIL_AI_CANONNAME) && ent->h_name)) {
  res->ai_canonname = mm_strdup(ent->h_name);
  if (res->ai_canonname == ((void*)0)) {
   evutil_freeaddrinfo(res);
   return ((void*)0);
  }
 }

 return res;
}
