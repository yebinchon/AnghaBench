
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rr_type ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_pkt_rcode ;


 int ldns_dnssec_verify_denial_nsec3_match (int *,int *,int *,int ,int ,int,int *) ;

ldns_status
ldns_dnssec_verify_denial_nsec3(ldns_rr *rr,
        ldns_rr_list *nsecs,
        ldns_rr_list *rrsigs,
        ldns_pkt_rcode packet_rcode,
        ldns_rr_type packet_qtype,
        bool packet_nodata)
{
 return ldns_dnssec_verify_denial_nsec3_match(
    rr, nsecs, rrsigs, packet_rcode,
    packet_qtype, packet_nodata, ((void*)0)
        );
}
