
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct packed_rrset_data {scalar_t__ count; int* rr_len; scalar_t__* rr_data; } ;


 size_t dname_valid (scalar_t__,int) ;
 int nsecbitmap_has_type_rdata (scalar_t__,int,int ) ;

int
nsec_has_type(struct ub_packed_rrset_key* nsec, uint16_t type)
{
 struct packed_rrset_data* d = (struct packed_rrset_data*)nsec->
  entry.data;
 size_t len;
 if(!d || d->count == 0 || d->rr_len[0] < 2+1)
  return 0;
 len = dname_valid(d->rr_data[0]+2, d->rr_len[0]-2);
 if(!len)
  return 0;
 return nsecbitmap_has_type_rdata(d->rr_data[0]+2+len,
  d->rr_len[0]-2-len, type);
}
