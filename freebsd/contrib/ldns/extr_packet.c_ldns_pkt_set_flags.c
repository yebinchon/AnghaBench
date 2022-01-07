
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int ldns_pkt ;


 int LDNS_AA ;
 int LDNS_AD ;
 int LDNS_CD ;
 int LDNS_QR ;
 int LDNS_RA ;
 int LDNS_RD ;
 int LDNS_TC ;
 int ldns_pkt_set_aa (int *,int) ;
 int ldns_pkt_set_ad (int *,int) ;
 int ldns_pkt_set_cd (int *,int) ;
 int ldns_pkt_set_qr (int *,int) ;
 int ldns_pkt_set_ra (int *,int) ;
 int ldns_pkt_set_rd (int *,int) ;
 int ldns_pkt_set_tc (int *,int) ;

bool
ldns_pkt_set_flags(ldns_pkt *packet, uint16_t flags)
{
 if (!packet) {
  return 0;
 }
 if ((flags & LDNS_QR) == LDNS_QR) {
  ldns_pkt_set_qr(packet, 1);
 }
 if ((flags & LDNS_AA) == LDNS_AA) {
  ldns_pkt_set_aa(packet, 1);
 }
 if ((flags & LDNS_RD) == LDNS_RD) {
  ldns_pkt_set_rd(packet, 1);
 }
 if ((flags & LDNS_TC) == LDNS_TC) {
  ldns_pkt_set_tc(packet, 1);
 }
 if ((flags & LDNS_CD) == LDNS_CD) {
  ldns_pkt_set_cd(packet, 1);
 }
 if ((flags & LDNS_RA) == LDNS_RA) {
  ldns_pkt_set_ra(packet, 1);
 }
 if ((flags & LDNS_AD) == LDNS_AD) {
  ldns_pkt_set_ad(packet, 1);
 }
 return 1;
}
