
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct autr_ta {int dname_len; int rr_len; int rr; } ;


 int LDNS_KEY_REVOKE_KEY ;
 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 int sldns_read_uint16 (int *) ;
 int * sldns_wirerr_get_rdata (int ,int ,int ) ;
 int sldns_wirerr_get_rdatalen (int ,int ,int ) ;
 scalar_t__ sldns_wirerr_get_type (int ,int ,int ) ;
 int sldns_write_uint16 (int *,int) ;

__attribute__((used)) static void
revoke_dnskey(struct autr_ta* ta, int off)
{
 uint16_t flags;
 uint8_t* data;
 if(sldns_wirerr_get_type(ta->rr, ta->rr_len, ta->dname_len) !=
  LDNS_RR_TYPE_DNSKEY)
  return;
 if(sldns_wirerr_get_rdatalen(ta->rr, ta->rr_len, ta->dname_len) < 2)
  return;
 data = sldns_wirerr_get_rdata(ta->rr, ta->rr_len, ta->dname_len);
 flags = sldns_read_uint16(data);
 if (off && (flags&LDNS_KEY_REVOKE_KEY))
  flags ^= LDNS_KEY_REVOKE_KEY;
 else
  flags |= LDNS_KEY_REVOKE_KEY;
 sldns_write_uint16(data, flags);
}
