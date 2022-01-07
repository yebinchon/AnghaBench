
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delegpt_ns {scalar_t__ done_pside6; scalar_t__ done_pside4; scalar_t__ lame; scalar_t__ got6; scalar_t__ got4; scalar_t__ resolved; int name; struct delegpt_ns* next; } ;
struct delegpt_addr {char* tls_auth_name; int addrlen; int addr; scalar_t__ lame; scalar_t__ bogus; struct delegpt_addr* next_target; } ;
struct delegpt {struct delegpt_addr* target_list; scalar_t__ bogus; struct delegpt_ns* nslist; scalar_t__ has_parent_side_NS; int name; } ;
typedef int s ;
typedef enum verbosity_value { ____Placeholder_verbosity_value } verbosity_value ;


 int LDNS_MAX_DOMAINLEN ;
 int VERB_ALGO ;
 int delegpt_count_addr (struct delegpt*,size_t*,size_t*,size_t*) ;
 int delegpt_count_ns (struct delegpt*,size_t*,size_t*) ;
 int dname_str (int ,char*) ;
 int log_addr (int,char*,int *,int ) ;
 int log_info (char*,char*,...) ;
 int snprintf (char*,int,char*,char const*,...) ;
 int verbosity ;

void delegpt_log(enum verbosity_value v, struct delegpt* dp)
{
 char buf[LDNS_MAX_DOMAINLEN+1];
 struct delegpt_ns* ns;
 struct delegpt_addr* a;
 size_t missing=0, numns=0, numaddr=0, numres=0, numavail=0;
 if(verbosity < v)
  return;
 dname_str(dp->name, buf);
 if(dp->nslist == ((void*)0) && dp->target_list == ((void*)0)) {
  log_info("DelegationPoint<%s>: empty", buf);
  return;
 }
 delegpt_count_ns(dp, &numns, &missing);
 delegpt_count_addr(dp, &numaddr, &numres, &numavail);
 log_info("DelegationPoint<%s>: %u names (%u missing), "
  "%u addrs (%u result, %u avail)%s",
  buf, (unsigned)numns, (unsigned)missing,
  (unsigned)numaddr, (unsigned)numres, (unsigned)numavail,
  (dp->has_parent_side_NS?" parentNS":" cacheNS"));
 if(verbosity >= VERB_ALGO) {
  for(ns = dp->nslist; ns; ns = ns->next) {
   dname_str(ns->name, buf);
   log_info("  %s %s%s%s%s%s%s%s", buf,
   (ns->resolved?"*":""),
   (ns->got4?" A":""), (ns->got6?" AAAA":""),
   (dp->bogus?" BOGUS":""), (ns->lame?" PARENTSIDE":""),
   (ns->done_pside4?" PSIDE_A":""),
   (ns->done_pside6?" PSIDE_AAAA":""));
  }
  for(a = dp->target_list; a; a = a->next_target) {
   char s[128];
   const char* str = "  ";
   if(a->bogus && a->lame) str = "  BOGUS ADDR_LAME ";
   else if(a->bogus) str = "  BOGUS ";
   else if(a->lame) str = "  ADDR_LAME ";
   if(a->tls_auth_name)
    snprintf(s, sizeof(s), "%s[%s]", str,
     a->tls_auth_name);
   else snprintf(s, sizeof(s), "%s", str);
   log_addr(VERB_ALGO, s, &a->addr, a->addrlen);
  }
 }
}
