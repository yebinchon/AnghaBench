
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int time_t ;
struct module_env {int infra_cache; } ;
struct iter_env {int supports_ipv4; int supports_ipv6; int donotq; } ;
struct delegpt_addr {scalar_t__ lame; scalar_t__ dnsseclame; int addrlen; int addr; scalar_t__ bogus; } ;


 int UNKNOWN_SERVER_NICENESS ;
 int USEFUL_SERVER_TOP_TIMEOUT ;
 int VERB_ALGO ;
 scalar_t__ addr_is_ip6 (int *,int ) ;
 scalar_t__ donotq_lookup (int ,int *,int ) ;
 scalar_t__ infra_get_lame_rtt (int ,int *,int ,int *,size_t,int ,int*,int*,int*,int*,int ) ;
 int log_addr (int ,char*,int *,int ) ;
 int verbose (int ,char*,int,char*,char*,char*,char*) ;

__attribute__((used)) static int
iter_filter_unsuitable(struct iter_env* iter_env, struct module_env* env,
 uint8_t* name, size_t namelen, uint16_t qtype, time_t now,
 struct delegpt_addr* a)
{
 int rtt, lame, reclame, dnsseclame;
 if(a->bogus)
  return -1;
 if(donotq_lookup(iter_env->donotq, &a->addr, a->addrlen)) {
  log_addr(VERB_ALGO, "skip addr on the donotquery list",
   &a->addr, a->addrlen);
  return -1;
 }
 if(!iter_env->supports_ipv6 && addr_is_ip6(&a->addr, a->addrlen)) {
  return -1;
 }
 if(!iter_env->supports_ipv4 && !addr_is_ip6(&a->addr, a->addrlen)) {
  return -1;
 }

 if(infra_get_lame_rtt(env->infra_cache, &a->addr, a->addrlen,
  name, namelen, qtype, &lame, &dnsseclame, &reclame,
  &rtt, now)) {
  log_addr(VERB_ALGO, "servselect", &a->addr, a->addrlen);
  verbose(VERB_ALGO, "   rtt=%d%s%s%s%s", rtt,
   lame?" LAME":"",
   dnsseclame?" DNSSEC_LAME":"",
   reclame?" REC_LAME":"",
   a->lame?" ADDR_LAME":"");
  if(lame)
   return -1;
  else if(rtt >= USEFUL_SERVER_TOP_TIMEOUT)






   return -1;

  else if(reclame)
   return rtt+USEFUL_SERVER_TOP_TIMEOUT*3;
  else if(dnsseclame || a->dnsseclame)
   return rtt+USEFUL_SERVER_TOP_TIMEOUT*2;
  else if(a->lame)
   return rtt+USEFUL_SERVER_TOP_TIMEOUT+1;
  else return rtt;
 }

 if(a->dnsseclame)
  return UNKNOWN_SERVER_NICENESS+USEFUL_SERVER_TOP_TIMEOUT*2;
 else if(a->lame)
  return USEFUL_SERVER_TOP_TIMEOUT+1+UNKNOWN_SERVER_NICENESS;
 return UNKNOWN_SERVER_NICENESS;
}
