
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {size_t dname_len; scalar_t__* dname; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct packed_rrset_data {size_t rrsig_count; scalar_t__ count; } ;


 int dname_count_labels (scalar_t__*) ;
 scalar_t__ dname_is_wild (scalar_t__*) ;
 int dname_remove_labels (scalar_t__**,size_t*,int) ;
 scalar_t__ rrsig_get_labcount (struct packed_rrset_data*,scalar_t__) ;

int
val_rrset_wildcard(struct ub_packed_rrset_key* rrset, uint8_t** wc,
 size_t* wc_len)
{
 struct packed_rrset_data* d = (struct packed_rrset_data*)rrset->
  entry.data;
 uint8_t labcount;
 int labdiff;
 uint8_t* wn;
 size_t i, wl;
 if(d->rrsig_count == 0) {
  return 1;
 }
 labcount = rrsig_get_labcount(d, d->count + 0);

 for(i=1; i<d->rrsig_count; i++) {
  if(labcount != rrsig_get_labcount(d, d->count + i)) {
   return 0;
  }
 }




 wn = rrset->rk.dname;
 wl = rrset->rk.dname_len;

 if(dname_is_wild(wn)) {
  wn += 2;
  wl -= 2;
 }
 labdiff = (dname_count_labels(wn) - 1) - (int)labcount;
 if(labdiff > 0) {
  *wc = wn;
  dname_remove_labels(wc, &wl, labdiff);
  *wc_len = wl;
  return 1;
 }
 return 1;
}
