
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;
struct sockaddr_storage {scalar_t__ ss_family; scalar_t__ ai_family; int ai_addrlen; struct sockaddr* ai_addr; struct sockaddr_storage* ai_next; int ai_socktype; int ai_flags; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {scalar_t__ ss_family; scalar_t__ ai_family; int ai_addrlen; struct sockaddr* ai_addr; struct addrinfo* ai_next; int ai_socktype; int ai_flags; } ;
typedef int socklen_t ;
typedef int ntop2 ;
typedef int name ;
typedef int hints ;
typedef int from ;


 scalar_t__ AF_INET6 ;
 int AI_NUMERICHOST ;
 int NI_MAXHOST ;
 int NI_NAMEREQD ;
 int NI_NUMERICHOST ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int debug (char*,int ) ;
 int debug3 (char*,char const*) ;
 int errno ;
 int freeaddrinfo (struct sockaddr_storage*) ;
 scalar_t__ getaddrinfo (char*,int *,struct sockaddr_storage*,struct sockaddr_storage**) ;
 scalar_t__ getnameinfo (struct sockaddr*,int,char*,int,int *,int ,int ) ;
 scalar_t__ getpeername (int ,struct sockaddr*,int*) ;
 int ipv64_normalise_mapped (struct sockaddr_storage*,int*) ;
 int logit (char*,char const*,char const*) ;
 int lowercase (char*) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int ssh_packet_get_connection_in (struct ssh*) ;
 char* ssh_remote_ipaddr (struct ssh*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strdup (char const*) ;
 int strerror (int ) ;

__attribute__((used)) static char *
remote_hostname(struct ssh *ssh)
{
 struct sockaddr_storage from;
 socklen_t fromlen;
 struct addrinfo hints, *ai, *aitop;
 char name[NI_MAXHOST], ntop2[NI_MAXHOST];
 const char *ntop = ssh_remote_ipaddr(ssh);


 fromlen = sizeof(from);
 memset(&from, 0, sizeof(from));
 if (getpeername(ssh_packet_get_connection_in(ssh),
     (struct sockaddr *)&from, &fromlen) < 0) {
  debug("getpeername failed: %.100s", strerror(errno));
  return strdup(ntop);
 }

 ipv64_normalise_mapped(&from, &fromlen);
 if (from.ss_family == AF_INET6)
  fromlen = sizeof(struct sockaddr_in6);

 debug3("Trying to reverse map address %.100s.", ntop);

 if (getnameinfo((struct sockaddr *)&from, fromlen, name, sizeof(name),
     ((void*)0), 0, NI_NAMEREQD) != 0) {

  return strdup(ntop);
 }






 memset(&hints, 0, sizeof(hints));
 hints.ai_socktype = SOCK_DGRAM;
 hints.ai_flags = AI_NUMERICHOST;
 if (getaddrinfo(name, ((void*)0), &hints, &ai) == 0) {
  logit("Nasty PTR record \"%s\" is set up for %s, ignoring",
      name, ntop);
  freeaddrinfo(ai);
  return strdup(ntop);
 }


 lowercase(name);
 memset(&hints, 0, sizeof(hints));
 hints.ai_family = from.ss_family;
 hints.ai_socktype = SOCK_STREAM;
 if (getaddrinfo(name, ((void*)0), &hints, &aitop) != 0) {
  logit("reverse mapping checking getaddrinfo for %.700s "
      "[%s] failed.", name, ntop);
  return strdup(ntop);
 }

 for (ai = aitop; ai; ai = ai->ai_next) {
  if (getnameinfo(ai->ai_addr, ai->ai_addrlen, ntop2,
      sizeof(ntop2), ((void*)0), 0, NI_NUMERICHOST) == 0 &&
      (strcmp(ntop, ntop2) == 0))
    break;
 }
 freeaddrinfo(aitop);

 if (ai == ((void*)0)) {

  logit("Address %.100s maps to %.600s, but this does not "
      "map back to the address.", ntop, name);
  return strdup(ntop);
 }
 return strdup(name);
}
