
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct packed_rrset_data {size_t* rr_len; scalar_t__** rr_data; scalar_t__ count; } ;


 int log_assert (int ) ;
 int nsecbitmap_has_type_rdata (scalar_t__*,size_t,int ) ;

int
nsec3_has_type(struct ub_packed_rrset_key* rrset, int r, uint16_t type)
{
 uint8_t* bitmap;
 size_t bitlen, skiplen;
        struct packed_rrset_data* d = (struct packed_rrset_data*)
         rrset->entry.data;
 log_assert(d && r < (int)d->count);
 skiplen = 2+4;

 if(d->rr_len[r] < skiplen+1)
  return 0;
 skiplen += 1+(size_t)d->rr_data[r][skiplen];

 if(d->rr_len[r] < skiplen+1)
  return 0;
 skiplen += 1+(size_t)d->rr_data[r][skiplen];
 if(d->rr_len[r] < skiplen)
  return 0;
 bitlen = d->rr_len[r] - skiplen;
 bitmap = d->rr_data[r]+skiplen;
 return nsecbitmap_has_type_rdata(bitmap, bitlen, type);
}
