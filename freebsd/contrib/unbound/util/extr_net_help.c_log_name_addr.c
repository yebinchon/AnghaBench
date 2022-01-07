
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr_in {int sin_port; int sin_addr; scalar_t__ sin_family; } ;
typedef scalar_t__ socklen_t ;
typedef enum verbosity_value { ____Placeholder_verbosity_value } verbosity_value ;
typedef int dest ;





 int LDNS_MAX_DOMAINLEN ;
 int dname_str (int *,char*) ;
 scalar_t__ inet_ntop (int,void*,char*,scalar_t__) ;
 scalar_t__ ntohs (int ) ;
 int strlcpy (char*,char*,int) ;
 int verbose (int,char*,char const*,char*,char const*,char*,int,...) ;
 int verbosity ;

void log_name_addr(enum verbosity_value v, const char* str, uint8_t* zone,
 struct sockaddr_storage* addr, socklen_t addrlen)
{
 uint16_t port;
 const char* family = "unknown_family ";
 char namebuf[LDNS_MAX_DOMAINLEN+1];
 char dest[100];
 int af = (int)((struct sockaddr_in*)addr)->sin_family;
 void* sinaddr = &((struct sockaddr_in*)addr)->sin_addr;
 if(verbosity < v)
  return;
 switch(af) {
  case 130: family=""; break;
  case 129: family="";
   sinaddr = &((struct sockaddr_in6*)addr)->sin6_addr;
   break;
  case 128: family="local "; break;
  default: break;
 }
 if(inet_ntop(af, sinaddr, dest, (socklen_t)sizeof(dest)) == 0) {
  (void)strlcpy(dest, "(inet_ntop error)", sizeof(dest));
 }
 dest[sizeof(dest)-1] = 0;
 port = ntohs(((struct sockaddr_in*)addr)->sin_port);
 dname_str(zone, namebuf);
 if(af != 130 && af != 129)
  verbose(v, "%s <%s> %s%s#%d (addrlen %d)",
   str, namebuf, family, dest, (int)port, (int)addrlen);
 else verbose(v, "%s <%s> %s%s#%d",
   str, namebuf, family, dest, (int)port);
}
