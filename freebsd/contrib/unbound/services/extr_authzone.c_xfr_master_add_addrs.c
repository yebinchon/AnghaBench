
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct sockaddr_in6 {int sin6_addr; void* sin6_port; int sin6_family; } ;
struct sockaddr_in {int sin_addr; void* sin_port; int sin_family; } ;
struct packed_rrset_data {size_t count; int* rr_len; int ** rr_data; } ;
struct auth_master {struct auth_addr* list; int host; } ;
struct auth_addr {struct auth_addr* next; void* addrlen; int addr; } ;
typedef void* socklen_t ;
typedef int s ;
typedef void* in_port_t ;


 int AF_INET ;
 int AF_INET6 ;
 size_t INET6_SIZE ;
 size_t INET_SIZE ;
 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 int UNBOUND_DNS_PORT ;
 scalar_t__ VERB_ALGO ;
 int addr_to_str (int *,void*,char*,int) ;
 scalar_t__ calloc (int,int) ;
 scalar_t__ htons (int ) ;
 int log_err (char*) ;
 int memmove (int *,int *,size_t) ;
 int verbose (scalar_t__,char*,int ,char*) ;
 scalar_t__ verbosity ;

__attribute__((used)) static void
xfr_master_add_addrs(struct auth_master* m, struct ub_packed_rrset_key* rrset,
 uint16_t rrtype)
{
 size_t i;
 struct packed_rrset_data* data;
 if(!m || !rrset) return;
 if(rrtype != LDNS_RR_TYPE_A && rrtype != LDNS_RR_TYPE_AAAA)
  return;
 data = (struct packed_rrset_data*)rrset->entry.data;
 for(i=0; i<data->count; i++) {
  struct auth_addr* a;
  size_t len = data->rr_len[i] - 2;
  uint8_t* rdata = data->rr_data[i]+2;
  if(rrtype == LDNS_RR_TYPE_A && len != INET_SIZE)
   continue;
  if(rrtype == LDNS_RR_TYPE_AAAA && len != INET6_SIZE)
   continue;


  a = (struct auth_addr*)calloc(1, sizeof(*a));
  if(!a) {
   log_err("out of memory");
   return;
  }
  if(rrtype == LDNS_RR_TYPE_A) {
   struct sockaddr_in* sa;
   a->addrlen = (socklen_t)sizeof(*sa);
   sa = (struct sockaddr_in*)&a->addr;
   sa->sin_family = AF_INET;
   sa->sin_port = (in_port_t)htons(UNBOUND_DNS_PORT);
   memmove(&sa->sin_addr, rdata, INET_SIZE);
  } else {
   struct sockaddr_in6* sa;
   a->addrlen = (socklen_t)sizeof(*sa);
   sa = (struct sockaddr_in6*)&a->addr;
   sa->sin6_family = AF_INET6;
   sa->sin6_port = (in_port_t)htons(UNBOUND_DNS_PORT);
   memmove(&sa->sin6_addr, rdata, INET6_SIZE);
  }
  if(verbosity >= VERB_ALGO) {
   char s[64];
   addr_to_str(&a->addr, a->addrlen, s, sizeof(s));
   verbose(VERB_ALGO, "auth host %s lookup %s",
    m->host, s);
  }

  a->next = m->list;
  m->list = a;
 }
}
