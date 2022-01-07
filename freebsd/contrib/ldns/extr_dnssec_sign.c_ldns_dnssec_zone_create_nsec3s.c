
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_dnssec_zone ;


 int ldns_dnssec_zone_create_nsec3s_mkmap (int *,int *,int ,int ,int ,int ,int *,int *) ;

ldns_status
ldns_dnssec_zone_create_nsec3s(ldns_dnssec_zone *zone,
  ldns_rr_list *new_rrs,
  uint8_t algorithm,
  uint8_t flags,
  uint16_t iterations,
  uint8_t salt_length,
  uint8_t *salt)
{
 return ldns_dnssec_zone_create_nsec3s_mkmap(zone, new_rrs, algorithm,
          flags, iterations, salt_length, salt, ((void*)0));

}
