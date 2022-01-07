
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 int ldns_pkt_tsig_sign_next (int *,char const*,char const*,int ,char const*,int const*,int ) ;

ldns_status
ldns_pkt_tsig_sign(ldns_pkt *pkt, const char *key_name, const char *key_data,
 uint16_t fudge, const char *algorithm_name, const ldns_rdf *query_mac)
{
 return ldns_pkt_tsig_sign_next(pkt, key_name, key_data, fudge, algorithm_name, query_mac, 0);
}
