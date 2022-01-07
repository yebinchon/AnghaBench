
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct packed_rrset_data {size_t count; size_t rrsig_count; size_t* rr_len; int ** rr_data; } ;


 int log_assert (int ) ;

__attribute__((used)) static void
rrset_get_rdata(struct ub_packed_rrset_key* k, size_t idx, uint8_t** rdata,
 size_t* len)
{
 struct packed_rrset_data* d = (struct packed_rrset_data*)k->entry.data;
 log_assert(d && idx < (d->count + d->rrsig_count));
 *rdata = d->rr_data[idx];
 *len = d->rr_len[idx];
}
