
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct packed_rrset_data {scalar_t__ rrsig_count; size_t count; int * rr_len; int * rr_data; } ;


 int rrsig_get_signer (int ,int ,int **,size_t*) ;

void
val_find_rrset_signer(struct ub_packed_rrset_key* rrset, uint8_t** sname,
 size_t* slen)
{
 struct packed_rrset_data* d = (struct packed_rrset_data*)
  rrset->entry.data;

 if(d->rrsig_count == 0) {
  *sname = ((void*)0);
  *slen = 0;
  return;
 }

 rrsig_get_signer(d->rr_data[d->count], d->rr_len[d->count],
  sname, slen);
}
