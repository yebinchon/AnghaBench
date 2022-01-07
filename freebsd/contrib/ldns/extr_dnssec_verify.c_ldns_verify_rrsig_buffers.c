
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ldns_status ;
typedef int ldns_buffer ;


 scalar_t__ ldns_buffer_begin (int *) ;
 int ldns_buffer_position (int *) ;
 int ldns_verify_rrsig_buffers_raw (unsigned char*,int ,int *,unsigned char*,int ,int ) ;

ldns_status
ldns_verify_rrsig_buffers(ldns_buffer *rawsig_buf, ldns_buffer *verify_buf,
      ldns_buffer *key_buf, uint8_t algo)
{
 return ldns_verify_rrsig_buffers_raw(
    (unsigned char*)ldns_buffer_begin(rawsig_buf),
    ldns_buffer_position(rawsig_buf),
    verify_buf,
    (unsigned char*)ldns_buffer_begin(key_buf),
    ldns_buffer_position(key_buf), algo);
}
