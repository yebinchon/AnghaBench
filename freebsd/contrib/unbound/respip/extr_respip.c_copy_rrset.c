
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ time_t ;
struct TYPE_4__ {struct packed_rrset_data* data; struct ub_packed_rrset_key* key; int hash; } ;
struct TYPE_3__ {int dname; int dname_len; } ;
struct ub_packed_rrset_key {TYPE_2__ entry; TYPE_1__ rk; int id; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {int count; size_t* rr_len; int ** rr_data; scalar_t__* rr_ttl; scalar_t__ rrsig_count; } ;


 int memcpy (int *,int *,size_t) ;
 int memset (TYPE_2__*,int ,int) ;
 void* regional_alloc (struct regional*,size_t) ;
 int regional_alloc_init (struct regional*,int ,int ) ;

__attribute__((used)) static struct ub_packed_rrset_key*
copy_rrset(const struct ub_packed_rrset_key* key, struct regional* region)
{
 struct ub_packed_rrset_key* ck = regional_alloc(region,
  sizeof(struct ub_packed_rrset_key));
 struct packed_rrset_data* d;
 struct packed_rrset_data* data = key->entry.data;
 size_t dsize, i;
 uint8_t* nextrdata;



 if(!ck)
  return ((void*)0);
 ck->id = key->id;
 memset(&ck->entry, 0, sizeof(ck->entry));
 ck->entry.hash = key->entry.hash;
 ck->entry.key = ck;
 ck->rk = key->rk;
 ck->rk.dname = regional_alloc_init(region, key->rk.dname,
  key->rk.dname_len);
 if(!ck->rk.dname)
  return ((void*)0);

 dsize = sizeof(struct packed_rrset_data) + data->count *
  (sizeof(size_t)+sizeof(uint8_t*)+sizeof(time_t));
 for(i=0; i<data->count; i++)
  dsize += data->rr_len[i];
 d = regional_alloc(region, dsize);
 if(!d)
  return ((void*)0);
 *d = *data;
 d->rrsig_count = 0;
 ck->entry.data = d;


 d->rr_len = (size_t*)((uint8_t*)d + sizeof(struct packed_rrset_data));
 d->rr_data = (uint8_t**)&(d->rr_len[d->count]);
 d->rr_ttl = (time_t*)&(d->rr_data[d->count]);
 nextrdata = (uint8_t*)&(d->rr_ttl[d->count]);
 for(i=0; i<d->count; i++) {
  d->rr_len[i] = data->rr_len[i];
  d->rr_ttl[i] = data->rr_ttl[i];
  d->rr_data[i] = nextrdata;
  memcpy(d->rr_data[i], data->rr_data[i], data->rr_len[i]);
  nextrdata += d->rr_len[i];
 }

 return ck;
}
