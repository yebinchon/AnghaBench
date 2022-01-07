
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reply_info {int security; int rrset_count; int ar_numrrsets; int ns_numrrsets; int an_numrrsets; int serve_expired_ttl; int prefetch_ttl; int ttl; int qdcount; int flags; } ;
struct regional {int dummy; } ;
struct alloc_cache {int dummy; } ;


 struct reply_info* construct_reply_info_base (struct regional*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int repinfo_copy_rrsets (struct reply_info*,struct reply_info*,struct regional*) ;
 int reply_info_alloc_rrset_keys (struct reply_info*,struct alloc_cache*,struct regional*) ;
 int reply_info_parsedelete (struct reply_info*,struct alloc_cache*) ;

struct reply_info*
reply_info_copy(struct reply_info* rep, struct alloc_cache* alloc,
 struct regional* region)
{
 struct reply_info* cp;
 cp = construct_reply_info_base(region, rep->flags, rep->qdcount,
  rep->ttl, rep->prefetch_ttl, rep->serve_expired_ttl,
  rep->an_numrrsets, rep->ns_numrrsets, rep->ar_numrrsets,
  rep->rrset_count, rep->security);
 if(!cp)
  return ((void*)0);

 if(!reply_info_alloc_rrset_keys(cp, alloc, region)) {
  if(!region)
   reply_info_parsedelete(cp, alloc);
  return ((void*)0);
 }
 if(!repinfo_copy_rrsets(cp, rep, region)) {
  if(!region)
   reply_info_parsedelete(cp, alloc);
  return ((void*)0);
 }
 return cp;
}
