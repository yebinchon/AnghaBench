
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
typedef scalar_t__ u_char ;
struct pkt {int org; } ;
struct recvbuf {int recv_length; struct pkt recv_pkt; } ;
struct peer {int flags; scalar_t__ flip; int const aorg; int const borg; int keyid; } ;
typedef int nak_code ;
typedef int const l_fp ;


 int FLAG_SKEY ;
 int INVALIDNAK ;
 int L_ISEQU (int const*,int const*) ;
 scalar_t__ L_ISZERO (int const*) ;
 int MIN_V4_PKT_LEN ;
 scalar_t__ MODE_ACTIVE ;
 scalar_t__ MODE_PASSIVE ;
 scalar_t__ MODE_SERVER ;
 int NONAK ;
 int NTOHL_FP (int *,int const*) ;
 int VALIDNAK ;
 int ntohl (int ) ;

nak_code
valid_NAK(
   struct peer *peer,
   struct recvbuf *rbufp,
   u_char hismode
   )
{
 int base_packet_length = MIN_V4_PKT_LEN;
 int remainder_size;
 struct pkt * rpkt;
 int keyid;
 l_fp p_org;
 const l_fp * myorg;




 if (rbufp->recv_length == base_packet_length) {
  return NONAK;
 }

 remainder_size = rbufp->recv_length - base_packet_length;



 if (remainder_size != 4) {
  return NONAK;
 }





 if (hismode != MODE_SERVER &&
     hismode != MODE_ACTIVE &&
     hismode != MODE_PASSIVE
     ) {
  return INVALIDNAK;
 }




 rpkt = &rbufp->recv_pkt;
 keyid = ntohl(((u_int32 *)rpkt)[base_packet_length / 4]);
 if (keyid != 0) {
  return INVALIDNAK;
 }







 if (!peer || (!peer->keyid && !(peer->flags & FLAG_SKEY))) {
  return INVALIDNAK;
 }




 NTOHL_FP(&rpkt->org, &p_org);
 if (peer->flip > 0)
  myorg = &peer->borg;
 else
  myorg = &peer->aorg;

 if (L_ISZERO(&p_org) ||
     L_ISZERO( myorg) ||
     !L_ISEQU(&p_org, myorg)) {
  return INVALIDNAK;
 }




 return VALIDNAK;
}
