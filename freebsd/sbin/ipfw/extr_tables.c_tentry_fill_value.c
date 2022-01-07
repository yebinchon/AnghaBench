
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct sockaddr_in6 {int sin6_scope_id; int sin6_addr; } ;
struct in_addr {int s_addr; } ;
struct addrinfo {scalar_t__ ai_addr; int ai_flags; int ai_family; } ;
struct TYPE_7__ {int nh4; int dscp; int zoneid; int nh6; void* limit; void* nat; void* fib; void* netgraph; void* skipto; void* divert; void* pipe; void* tag; } ;
typedef TYPE_2__ ipfw_table_value ;
struct TYPE_6__ {TYPE_2__ value; } ;
struct TYPE_8__ {TYPE_1__ v; } ;
typedef TYPE_3__ ipfw_obj_tentry ;
typedef int ipfw_obj_header ;
typedef int hints ;


 int AF_INET ;
 int AF_INET6 ;
 int AI_NUMERICHOST ;
 int EX_OSERR ;
 int EX_USAGE ;



 int IPFW_VTYPE_LEGACY ;
 int errx (int ,char*,...) ;
 int f_ipdscp ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 int inet_pton (int ,char*,int*) ;
 int isalpha (char) ;
 scalar_t__ lookup_host (char*,struct in_addr*) ;
 int match_token (int ,char*) ;
 int memset (struct addrinfo*,int ,int) ;
 int ntohl (int) ;
 int set_legacy_value (int,TYPE_2__*) ;
 char* strchr (char*,char) ;
 void* strtol (char*,char**,int) ;
 int strtoul (char*,char**,int ) ;

__attribute__((used)) static void
tentry_fill_value(ipfw_obj_header *oh, ipfw_obj_tentry *tent, char *arg,
    uint8_t type, uint32_t vmask)
{
 struct addrinfo hints, *res;
 uint32_t a4, flag, val;
 ipfw_table_value *v;
 uint32_t i;
 int dval;
 char *comma, *e, *etype, *n, *p;
 struct in_addr ipaddr;

 v = &tent->v.value;


 if (vmask == IPFW_VTYPE_LEGACY) {

  val = strtoul(arg, &p, 0);
  if (*p == '\0') {
   set_legacy_value(val, v);
   return;
  }
  if (inet_pton(AF_INET, arg, &val) == 1) {
   set_legacy_value(ntohl(val), v);
   return;
  }

  if (lookup_host(arg, &ipaddr) == 0) {
   set_legacy_value(ntohl(ipaddr.s_addr), v);
   return;
  }
  errx(EX_OSERR, "Unable to parse value %s", arg);
 }







 n = arg;
 etype = ((void*)0);
 for (i = 1; i < (1 << 31); i *= 2) {
  if ((flag = (vmask & i)) == 0)
   continue;
  vmask &= ~flag;

  if ((comma = strchr(n, ',')) != ((void*)0))
   *comma = '\0';

  switch (flag) {
  case 128:
   v->tag = strtol(n, &e, 10);
   if (*e != '\0')
    etype = "tag";
   break;
  case 130:
   v->pipe = strtol(n, &e, 10);
   if (*e != '\0')
    etype = "pipe";
   break;
  case 138:
   v->divert = strtol(n, &e, 10);
   if (*e != '\0')
    etype = "divert";
   break;
  case 129:
   v->skipto = strtol(n, &e, 10);
   if (*e != '\0')
    etype = "skipto";
   break;
  case 133:
   v->netgraph = strtol(n, &e, 10);
   if (*e != '\0')
    etype = "netgraph";
   break;
  case 136:
   v->fib = strtol(n, &e, 10);
   if (*e != '\0')
    etype = "fib";
   break;
  case 134:
   v->nat = strtol(n, &e, 10);
   if (*e != '\0')
    etype = "nat";
   break;
  case 135:
   v->limit = strtol(n, &e, 10);
   if (*e != '\0')
    etype = "limit";
   break;
  case 132:
   if (strchr(n, '.') != ((void*)0) &&
       inet_pton(AF_INET, n, &a4) == 1) {
    v->nh4 = ntohl(a4);
    break;
   }
   if (lookup_host(n, &ipaddr) == 0) {
    v->nh4 = ntohl(ipaddr.s_addr);
    break;
   }
   etype = "ipv4";
   break;
  case 137:
   if (isalpha(*n)) {
    if ((dval = match_token(f_ipdscp, n)) != -1) {
     v->dscp = dval;
     break;
    } else
     etype = "DSCP code";
   } else {
    v->dscp = strtol(n, &e, 10);
    if (v->dscp > 63 || *e != '\0')
     etype = "DSCP value";
   }
   break;
  case 131:
   if (strchr(n, ':') != ((void*)0)) {
    memset(&hints, 0, sizeof(hints));
    hints.ai_family = AF_INET6;
    hints.ai_flags = AI_NUMERICHOST;
    if (getaddrinfo(n, ((void*)0), &hints, &res) == 0) {
     v->nh6 = ((struct sockaddr_in6 *)
         res->ai_addr)->sin6_addr;
     v->zoneid = ((struct sockaddr_in6 *)
         res->ai_addr)->sin6_scope_id;
     freeaddrinfo(res);
     break;
    }
   }
   etype = "ipv6";
   break;
  }

  if (etype != ((void*)0))
   errx(EX_USAGE, "Unable to parse %s as %s", n, etype);

  if (comma != ((void*)0))
   *comma++ = ',';

  if ((n = comma) != ((void*)0))
   continue;


  if (vmask != 0)
   errx(EX_USAGE, "Not enough fields inside value");
 }
}
