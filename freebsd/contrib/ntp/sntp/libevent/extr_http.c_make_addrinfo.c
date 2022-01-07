
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evutil_addrinfo {int ai_flags; int ai_socktype; int ai_family; } ;
typedef int strport ;
typedef int hints ;
typedef int ev_uint16_t ;


 int AF_UNSPEC ;
 int EVUTIL_AI_ADDRCONFIG ;
 int EVUTIL_AI_PASSIVE ;
 int EVUTIL_EAI_SYSTEM ;
 int NI_MAXSERV ;
 int SOCK_STREAM ;
 int event_warn (char*) ;
 int event_warnx (char*,int ) ;
 int evutil_gai_strerror (int) ;
 int evutil_getaddrinfo (char const*,char*,struct evutil_addrinfo*,struct evutil_addrinfo**) ;
 int evutil_snprintf (char*,int,char*,int ) ;
 int memset (struct evutil_addrinfo*,int ,int) ;

__attribute__((used)) static struct evutil_addrinfo *
make_addrinfo(const char *address, ev_uint16_t port)
{
 struct evutil_addrinfo *ai = ((void*)0);

 struct evutil_addrinfo hints;
 char strport[NI_MAXSERV];
 int ai_result;

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = AF_UNSPEC;
 hints.ai_socktype = SOCK_STREAM;


 hints.ai_flags = EVUTIL_AI_PASSIVE|EVUTIL_AI_ADDRCONFIG;
 evutil_snprintf(strport, sizeof(strport), "%d", port);
 if ((ai_result = evutil_getaddrinfo(address, strport, &hints, &ai))
     != 0) {
  if (ai_result == EVUTIL_EAI_SYSTEM)
   event_warn("getaddrinfo");
  else
   event_warnx("getaddrinfo: %s",
       evutil_gai_strerror(ai_result));
  return (((void*)0));
 }

 return (ai);
}
