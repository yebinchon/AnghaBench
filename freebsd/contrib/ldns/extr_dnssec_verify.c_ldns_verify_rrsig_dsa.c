
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_buffer ;


 scalar_t__ ldns_buffer_begin (int *) ;
 int ldns_buffer_position (int *) ;
 int ldns_verify_rrsig_dsa_raw (unsigned char*,int ,int *,unsigned char*,int ) ;

ldns_status
ldns_verify_rrsig_dsa(ldns_buffer *sig, ldns_buffer *rrset, ldns_buffer *key)
{
 return ldns_verify_rrsig_dsa_raw(
    (unsigned char*) ldns_buffer_begin(sig),
    ldns_buffer_position(sig),
    rrset,
    (unsigned char*) ldns_buffer_begin(key),
    ldns_buffer_position(key));
}
