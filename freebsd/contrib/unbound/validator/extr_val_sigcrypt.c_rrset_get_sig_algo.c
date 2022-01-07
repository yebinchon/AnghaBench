
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct packed_rrset_data {size_t rrsig_count; int* rr_len; size_t count; scalar_t__** rr_data; } ;


 int log_assert (int) ;

__attribute__((used)) static int
rrset_get_sig_algo(struct ub_packed_rrset_key* k, size_t sig_idx)
{
 struct packed_rrset_data* d = (struct packed_rrset_data*)k->entry.data;
 log_assert(sig_idx < d->rrsig_count);
 if(d->rr_len[d->count + sig_idx] < 2+3)
  return 0;
 return (int)d->rr_data[d->count + sig_idx][2+2];
}
