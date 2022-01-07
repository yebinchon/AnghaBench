
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 int ldns_pkt_tsig_verify_next (int *,int const*,size_t,char const*,char const*,int const*,int ) ;

bool
ldns_pkt_tsig_verify(ldns_pkt *pkt, const uint8_t *wire, size_t wirelen, const char *key_name,
 const char *key_data, const ldns_rdf *orig_mac_rdf)
{
 return ldns_pkt_tsig_verify_next(pkt, wire, wirelen, key_name, key_data, orig_mac_rdf, 0);
}
