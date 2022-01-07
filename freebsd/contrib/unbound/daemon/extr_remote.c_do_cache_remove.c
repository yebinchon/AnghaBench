
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {int msg_cache; int rrset_cache; } ;
struct worker {TYPE_1__ env; } ;
struct query_info {size_t qname_len; int * local_alias; scalar_t__ qclass; scalar_t__ qtype; int * qname; } ;
typedef int hashvalue_type ;


 int BIT_CD ;
 scalar_t__ LDNS_RR_TYPE_AAAA ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 int PACKED_RRSET_SOA_NEG ;
 int query_info_hash (struct query_info*,int ) ;
 int rrset_cache_remove (int ,int *,size_t,scalar_t__,scalar_t__,int ) ;
 int slabhash_remove (int ,int ,struct query_info*) ;

__attribute__((used)) static void
do_cache_remove(struct worker* worker, uint8_t* nm, size_t nmlen,
 uint16_t t, uint16_t c)
{
 hashvalue_type h;
 struct query_info k;
 rrset_cache_remove(worker->env.rrset_cache, nm, nmlen, t, c, 0);
 if(t == LDNS_RR_TYPE_SOA)
  rrset_cache_remove(worker->env.rrset_cache, nm, nmlen, t, c,
   PACKED_RRSET_SOA_NEG);
 k.qname = nm;
 k.qname_len = nmlen;
 k.qtype = t;
 k.qclass = c;
 k.local_alias = ((void*)0);
 h = query_info_hash(&k, 0);
 slabhash_remove(worker->env.msg_cache, h, &k);
 if(t == LDNS_RR_TYPE_AAAA) {

  h = query_info_hash(&k, BIT_CD);
  slabhash_remove(worker->env.msg_cache, h, &k);
 }
}
