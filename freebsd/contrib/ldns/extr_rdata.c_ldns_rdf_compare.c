
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int ldns_rdf ;


 scalar_t__ ldns_rdf_data (int const*) ;
 scalar_t__ ldns_rdf_size (int const*) ;

int
ldns_rdf_compare(const ldns_rdf *rd1, const ldns_rdf *rd2)
{
 uint16_t i1, i2, i;
 uint8_t *d1, *d2;


 if (!rd1 && !rd2) {
  return 0;
 }
 if (!rd1 || !rd2) {
  return -1;
 }
 i1 = ldns_rdf_size(rd1);
 i2 = ldns_rdf_size(rd2);

 if (i1 < i2) {
  return -1;
 } else if (i1 > i2) {
  return +1;
 } else {
  d1 = (uint8_t*)ldns_rdf_data(rd1);
  d2 = (uint8_t*)ldns_rdf_data(rd2);
  for(i = 0; i < i1; i++) {
   if (d1[i] < d2[i]) {
    return -1;
   } else if (d1[i] > d2[i]) {
    return +1;
   }
  }
 }
 return 0;
}
