
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ldns_rr_type ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ ldns_dnssec_rrsets ;



ldns_rr_type
ldns_dnssec_rrsets_type(const ldns_dnssec_rrsets *rrsets)
{
 if (rrsets) {
  return rrsets->type;
 } else {
  return 0;
 }
}
