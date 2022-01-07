
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autr_ta {int dname_len; int rr_len; int rr; } ;


 int DNSKEY_BIT_SEP ;
 int dnskey_flags (int ,int ,int ) ;
 int sldns_wirerr_get_rdata (int ,int ,int ) ;
 int sldns_wirerr_get_rdatalen (int ,int ,int ) ;
 int sldns_wirerr_get_type (int ,int ,int ) ;

__attribute__((used)) static int
ta_is_dnskey_sep(struct autr_ta* ta)
{
 return (dnskey_flags(
  sldns_wirerr_get_type(ta->rr, ta->rr_len, ta->dname_len),
  sldns_wirerr_get_rdata(ta->rr, ta->rr_len, ta->dname_len),
  sldns_wirerr_get_rdatalen(ta->rr, ta->rr_len, ta->dname_len)
  ) & DNSKEY_BIT_SEP);
}
