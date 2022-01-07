
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_pkt ;


 int LDNS_SECTION_ANY ;
 scalar_t__ ldns_pkt_section_count (int *,int ) ;

bool
ldns_pkt_empty(ldns_pkt *p)
{
 if (!p) {
  return 1;
 }
 if (ldns_pkt_section_count(p, LDNS_SECTION_ANY) > 0) {
  return 0;
 } else {
  return 1;
    }
}
