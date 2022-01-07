
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_status ;
typedef int ldns_rr_type ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ ldns_dnssec_rrsets ;


 int LDNS_STATUS_ERR ;
 int LDNS_STATUS_OK ;

ldns_status
ldns_dnssec_rrsets_set_type(ldns_dnssec_rrsets *rrsets,
        ldns_rr_type type)
{
 if (rrsets) {
  rrsets->type = type;
  return LDNS_STATUS_OK;
 }
 return LDNS_STATUS_ERR;
}
