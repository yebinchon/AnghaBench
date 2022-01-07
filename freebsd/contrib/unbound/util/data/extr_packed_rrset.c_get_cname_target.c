
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {int type; } ;
struct ub_packed_rrset_key {TYPE_2__ entry; TYPE_1__ rk; } ;
struct packed_rrset_data {int count; int* rr_len; int ** rr_data; } ;


 scalar_t__ LDNS_RR_TYPE_CNAME ;
 scalar_t__ LDNS_RR_TYPE_DNAME ;
 size_t dname_valid (int *,size_t) ;
 scalar_t__ ntohs (int ) ;
 size_t sldns_read_uint16 (int *) ;

void
get_cname_target(struct ub_packed_rrset_key* rrset, uint8_t** dname,
 size_t* dname_len)
{
 struct packed_rrset_data* d;
 size_t len;
 if(ntohs(rrset->rk.type) != LDNS_RR_TYPE_CNAME &&
  ntohs(rrset->rk.type) != LDNS_RR_TYPE_DNAME)
  return;
 d = (struct packed_rrset_data*)rrset->entry.data;
 if(d->count < 1)
  return;
 if(d->rr_len[0] < 3)
  return;
 len = sldns_read_uint16(d->rr_data[0]);
 if(len != d->rr_len[0] - sizeof(uint16_t))
  return;
 if(dname_valid(d->rr_data[0]+sizeof(uint16_t), len) != len)
  return;
 *dname = d->rr_data[0]+sizeof(uint16_t);
 *dname_len = len;
}
