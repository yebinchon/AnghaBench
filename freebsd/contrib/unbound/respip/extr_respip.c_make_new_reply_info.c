
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reply_info {int * rrsets; int serve_expired_ttl; int prefetch_ttl; int ttl; int qdcount; int flags; } ;
struct regional {int dummy; } ;


 struct reply_info* construct_reply_info_base (struct regional*,int ,int ,int ,int ,int ,size_t,int ,int ,size_t,int ) ;
 int reply_info_alloc_rrset_keys (struct reply_info*,int *,struct regional*) ;
 int sec_status_insecure ;

__attribute__((used)) static struct reply_info *
make_new_reply_info(const struct reply_info* rep, struct regional* region,
 size_t an_numrrsets, size_t copy_rrsets)
{
 struct reply_info* new_rep;
 size_t i;






 new_rep = construct_reply_info_base(region, rep->flags,
  rep->qdcount, rep->ttl, rep->prefetch_ttl,
  rep->serve_expired_ttl, an_numrrsets, 0, 0, an_numrrsets,
  sec_status_insecure);
 if(!new_rep)
  return ((void*)0);
 if(!reply_info_alloc_rrset_keys(new_rep, ((void*)0), region))
  return ((void*)0);
 for(i=0; i<copy_rrsets; i++)
  new_rep->rrsets[i] = rep->rrsets[i];

 return new_rep;
}
