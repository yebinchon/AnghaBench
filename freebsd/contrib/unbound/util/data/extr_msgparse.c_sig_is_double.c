
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct rrset_parse {struct rr_parse* rrsig_first; } ;
struct rr_parse {struct rr_parse* next; scalar_t__ ttl_data; } ;
typedef int sldns_buffer ;
typedef int siglen ;


 scalar_t__ memcmp (scalar_t__,int *,int) ;
 int memmove (int*,scalar_t__,int) ;
 int ntohs (int) ;
 size_t sldns_buffer_position (int *) ;
 int sldns_buffer_read_u16 (int *) ;
 int sldns_buffer_remaining (int *) ;
 int sldns_buffer_set_position (int *,size_t) ;
 int sldns_buffer_skip (int *,int) ;

__attribute__((used)) static int
sig_is_double(sldns_buffer* pkt, struct rrset_parse* rrset, uint8_t* ttldata)
{
 uint16_t rlen, siglen;
 size_t pos = sldns_buffer_position(pkt);
 struct rr_parse* sig;
 if(sldns_buffer_remaining(pkt) < 6)
  return 0;
 sldns_buffer_skip(pkt, 4);
 rlen = sldns_buffer_read_u16(pkt);
 if(sldns_buffer_remaining(pkt) < rlen) {
  sldns_buffer_set_position(pkt, pos);
  return 0;
 }
 sldns_buffer_set_position(pkt, pos);

 sig = rrset->rrsig_first;
 while(sig) {

  memmove(&siglen, sig->ttl_data+4, sizeof(siglen));
  siglen = ntohs(siglen);
  if(siglen == rlen) {
   if(siglen>0 && memcmp(sig->ttl_data+6, ttldata+6,
    siglen) == 0) {

    return 1;
   }
  }
  sig = sig->next;
 }
 return 0;
}
