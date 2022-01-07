
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rrset_parse {struct rrset_parse* rrset_all_next; } ;
struct reply_info {scalar_t__ ttl; size_t rrset_count; scalar_t__ serve_expired_ttl; int prefetch_ttl; TYPE_2__** rrsets; int security; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {scalar_t__ ttl; } ;
struct msg_parse {struct rrset_parse* rrset_first; } ;
typedef int sldns_buffer ;
struct TYPE_3__ {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ entry; } ;


 scalar_t__ MAX_TTL ;
 scalar_t__ NORR_TTL ;
 int PREFETCH_TTL_CALC (scalar_t__) ;
 scalar_t__ SERVE_EXPIRED_TTL ;
 int log_assert (struct reply_info*) ;
 int parse_copy_decompress_rrset (int *,struct msg_parse*,struct rrset_parse*,struct regional*,TYPE_2__*) ;
 int sec_status_unchecked ;

__attribute__((used)) static int
parse_copy_decompress(sldns_buffer* pkt, struct msg_parse* msg,
 struct reply_info* rep, struct regional* region)
{
 size_t i;
 struct rrset_parse *pset = msg->rrset_first;
 struct packed_rrset_data* data;
 log_assert(rep);
 rep->ttl = MAX_TTL;
 rep->security = sec_status_unchecked;
 if(rep->rrset_count == 0)
  rep->ttl = NORR_TTL;

 for(i=0; i<rep->rrset_count; i++) {
  if(!parse_copy_decompress_rrset(pkt, msg, pset, region,
   rep->rrsets[i]))
   return 0;
  data = (struct packed_rrset_data*)rep->rrsets[i]->entry.data;
  if(data->ttl < rep->ttl)
   rep->ttl = data->ttl;

  pset = pset->rrset_all_next;
 }
 rep->prefetch_ttl = PREFETCH_TTL_CALC(rep->ttl);
 rep->serve_expired_ttl = rep->ttl + SERVE_EXPIRED_TTL;
 return 1;
}
