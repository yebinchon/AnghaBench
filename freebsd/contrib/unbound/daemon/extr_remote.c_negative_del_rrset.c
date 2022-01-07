
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct packed_rrset_data {int count; scalar_t__ rrsig_count; scalar_t__* rr_len; int ttl; } ;
struct lruhash_entry {scalar_t__ data; scalar_t__ key; } ;
struct del_info {int num_rrsets; int expired; } ;


 int PACKED_RRSET_PARENT_SIDE ;

__attribute__((used)) static void
negative_del_rrset(struct lruhash_entry* e, void* arg)
{

 struct del_info* inf = (struct del_info*)arg;
 struct ub_packed_rrset_key* k = (struct ub_packed_rrset_key*)e->key;
 struct packed_rrset_data* d = (struct packed_rrset_data*)e->data;


 if((k->rk.flags & PACKED_RRSET_PARENT_SIDE) && d->count == 1 &&
  d->rrsig_count == 0 && d->rr_len[0] == 0) {
  d->ttl = inf->expired;
  inf->num_rrsets++;
 }
}
