
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {scalar_t__ security; size_t count; int* rr_len; scalar_t__* rr_data; } ;
struct delegpt {int bogus; int dp_type_mlc; } ;


 int delegpt_add_ns (struct delegpt*,struct regional*,scalar_t__,int ) ;
 size_t dname_valid (scalar_t__,int) ;
 int log_assert (int) ;
 scalar_t__ sec_status_bogus ;
 scalar_t__ sldns_read_uint16 (scalar_t__) ;

int
delegpt_rrset_add_ns(struct delegpt* dp, struct regional* region,
        struct ub_packed_rrset_key* ns_rrset, uint8_t lame)
{
 struct packed_rrset_data* nsdata = (struct packed_rrset_data*)
  ns_rrset->entry.data;
 size_t i;
 log_assert(!dp->dp_type_mlc);
 if(nsdata->security == sec_status_bogus)
  dp->bogus = 1;
 for(i=0; i<nsdata->count; i++) {
  if(nsdata->rr_len[i] < 2+1) continue;
  if(dname_valid(nsdata->rr_data[i]+2, nsdata->rr_len[i]-2) !=
   (size_t)sldns_read_uint16(nsdata->rr_data[i]))
   continue;

  if(!delegpt_add_ns(dp, region, nsdata->rr_data[i]+2, lame))
   return 0;
 }
 return 1;
}
