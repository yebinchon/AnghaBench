
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_rr ;
typedef int ldns_buffer ;


 int LDNS_MIN_BUFLEN ;
 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 scalar_t__ LDNS_RR_TYPE_KEY ;
 int ldns_buffer_begin (int *) ;
 int ldns_buffer_free (int *) ;
 int * ldns_buffer_new (int ) ;
 size_t ldns_buffer_position (int *) ;
 int ldns_calc_keytag_raw (int ,size_t) ;
 scalar_t__ ldns_rr_get_type (int const*) ;
 int ldns_rr_rdata2buffer_wire (int *,int const*) ;

uint16_t
ldns_calc_keytag(const ldns_rr *key)
{
 uint16_t ac16;
 ldns_buffer *keybuf;
 size_t keysize;

 if (!key) {
  return 0;
 }

 if (ldns_rr_get_type(key) != LDNS_RR_TYPE_DNSKEY &&
     ldns_rr_get_type(key) != LDNS_RR_TYPE_KEY
     ) {
  return 0;
 }


 keybuf = ldns_buffer_new(LDNS_MIN_BUFLEN);
 if (!keybuf) {
  return 0;
 }
 (void)ldns_rr_rdata2buffer_wire(keybuf, key);

 keysize= ldns_buffer_position(keybuf);

 ac16 = ldns_calc_keytag_raw(ldns_buffer_begin(keybuf), keysize);
 ldns_buffer_free(keybuf);
 return ac16;
}
