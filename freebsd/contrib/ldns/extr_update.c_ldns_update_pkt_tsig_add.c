
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_status ;
typedef int ldns_resolver ;
typedef int ldns_pkt ;


 int LDNS_STATUS_OK ;
 int ldns_pkt_tsig_sign (int *,scalar_t__,scalar_t__,int,int ,int *) ;
 int ldns_resolver_tsig_algorithm (int const*) ;
 scalar_t__ ldns_resolver_tsig_keydata (int const*) ;
 scalar_t__ ldns_resolver_tsig_keyname (int const*) ;

ldns_status
ldns_update_pkt_tsig_add(ldns_pkt *p, const ldns_resolver *r)
{
 (void)p;
 (void)r;


 return LDNS_STATUS_OK;
}
