
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct pkt {int ppoll; int * exten; int stratum; int xmt; } ;
struct key {int dummy; } ;
typedef int l_fp ;


 int HTONL_FP (int *,int *) ;
 scalar_t__ KEY_MAC_LEN ;
 int LEAP_NOTINSYNC ;
 int LEN_PKT_NOMAC ;
 int MAX_MDG_LEN ;
 int STRATUM_TO_PKT (int ) ;
 int STRATUM_UNSPEC ;
 int TVTOTS (struct timeval const*,int *) ;
 int ZERO (struct pkt) ;
 scalar_t__ debug ;
 int htonl (int) ;
 int make_mac (struct pkt*,int,int ,struct key*,char*) ;
 int ntpver ;
 int printf (char*,int,...) ;
 int set_li_vn_mode (struct pkt*,int ,int ,int) ;

int
generate_pkt (
 struct pkt *x_pkt,
 const struct timeval *tv_xmt,
 int key_id,
 struct key *pkt_key
 )
{
 l_fp xmt_fp;
 int pkt_len;
 int mac_size;

 pkt_len = LEN_PKT_NOMAC;
 ZERO(*x_pkt);
 TVTOTS(tv_xmt, &xmt_fp);
 HTONL_FP(&xmt_fp, &x_pkt->xmt);
 x_pkt->stratum = STRATUM_TO_PKT(STRATUM_UNSPEC);
 x_pkt->ppoll = 8;

 set_li_vn_mode(x_pkt, LEAP_NOTINSYNC, ntpver, 3);
 if (debug > 0) {
  printf("generate_pkt: key_id %d, key pointer %p\n", key_id, pkt_key);
 }
 if (pkt_key != ((void*)0)) {
  x_pkt->exten[0] = htonl(key_id);
  mac_size = make_mac(x_pkt, pkt_len, MAX_MDG_LEN,
        pkt_key, (char *)&x_pkt->exten[1]);
  if (mac_size > 0)
   pkt_len += mac_size + KEY_MAC_LEN;






 }
 return pkt_len;
}
