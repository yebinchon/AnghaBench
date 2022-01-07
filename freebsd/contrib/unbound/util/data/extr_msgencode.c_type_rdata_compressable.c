
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int type; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct TYPE_6__ {scalar_t__ _compress; } ;
typedef TYPE_2__ sldns_rr_descriptor ;


 scalar_t__ LDNS_RR_COMPRESS ;
 int ntohs (int ) ;
 TYPE_2__ const* sldns_rr_descript (int ) ;

__attribute__((used)) static const sldns_rr_descriptor*
type_rdata_compressable(struct ub_packed_rrset_key* key)
{
 uint16_t t = ntohs(key->rk.type);
 if(sldns_rr_descript(t) &&
  sldns_rr_descript(t)->_compress == LDNS_RR_COMPRESS)
  return sldns_rr_descript(t);
 return 0;
}
