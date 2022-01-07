
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct evdns_base {int dummy; } ;
typedef int ss ;


 int EVDNS_LOCK (struct evdns_base*) ;
 int EVDNS_LOG_WARN ;
 int EVDNS_UNLOCK (struct evdns_base*) ;
 int evdns_nameserver_add_impl_ (struct evdns_base*,struct sockaddr*,int) ;
 scalar_t__ evutil_parse_sockaddr_port (char const*,struct sockaddr*,int*) ;
 int log (int ,char*,char const*) ;
 scalar_t__ sockaddr_getport (struct sockaddr*) ;
 int sockaddr_setport (struct sockaddr*,int) ;

int
evdns_base_nameserver_ip_add(struct evdns_base *base, const char *ip_as_string) {
 struct sockaddr_storage ss;
 struct sockaddr *sa;
 int len = sizeof(ss);
 int res;
 if (evutil_parse_sockaddr_port(ip_as_string, (struct sockaddr *)&ss,
  &len)) {
  log(EVDNS_LOG_WARN, "Unable to parse nameserver address %s",
   ip_as_string);
  return 4;
 }
 sa = (struct sockaddr *) &ss;
 if (sockaddr_getport(sa) == 0)
  sockaddr_setport(sa, 53);

 EVDNS_LOCK(base);
 res = evdns_nameserver_add_impl_(base, sa, len);
 EVDNS_UNLOCK(base);
 return res;
}
