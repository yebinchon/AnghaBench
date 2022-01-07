
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct reply_info {size_t rrset_count; TYPE_3__* ref; int serve_expired_ttl; int prefetch_ttl; int ttl; } ;
struct packed_rrset_data {size_t count; size_t rrsig_count; int * rr_ttl; int ttl; } ;
struct TYPE_6__ {TYPE_2__* key; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_5__ {TYPE_1__ entry; } ;



void
reply_info_set_ttls(struct reply_info* rep, time_t timenow)
{
 size_t i, j;
 rep->ttl += timenow;
 rep->prefetch_ttl += timenow;
 rep->serve_expired_ttl += timenow;
 for(i=0; i<rep->rrset_count; i++) {
  struct packed_rrset_data* data = (struct packed_rrset_data*)
   rep->ref[i].key->entry.data;
  if(i>0 && rep->ref[i].key == rep->ref[i-1].key)
   continue;
  data->ttl += timenow;
  for(j=0; j<data->count + data->rrsig_count; j++) {
   data->rr_ttl[j] += timenow;
  }
 }
}
