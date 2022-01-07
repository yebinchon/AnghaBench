
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
typedef int u_int ;
struct pkt {scalar_t__ stratum; int xmt; int org; int li_vn_mode; int refid; int exten; } ;
struct key {int dummy; } ;
typedef int sockaddr_u ;
typedef int l_fp ;


 int AUTHENTICATION ;
 int FALSE ;
 scalar_t__ HAVE_OPT (int ) ;
 int KOD_DEMOBILIZE ;
 int KOD_RATE ;
 scalar_t__ LEAP_NOTINSYNC ;
 scalar_t__ LEN_PKT_NOMAC ;
 int LOG_ERR ;
 int L_ISEQU (int *,int *) ;
 int MODE_BROADCAST ;
 int MODE_PASSIVE ;
 int NTOHL_FP (int *,int *) ;
 int NTP_OLDVERSION ;
 int NTP_VERSION ;
 int PACKET_UNUSEABLE ;
 scalar_t__ PKT_LEAP (int ) ;
 int PKT_MODE (int ) ;
 int PKT_VERSION (int ) ;
 int SERVER_AUTH_FAIL ;
 int SERVER_UNUSEABLE ;
 scalar_t__ STRATUM_PKT_UNSPEC ;
 int TRACE (int,char*) ;
 int TRUE ;
 int auth_md5 (struct pkt*,int,int,struct key*) ;
 int get_key (int,struct key**) ;
 int msyslog (int ,char*,char const*,...) ;
 int ntohl (int ) ;
 char const* prettydate (int *) ;
 int printf (char*,int,...) ;
 int * skip_efields (int ,int *) ;
 char const* stoa (int *) ;
 scalar_t__ strncmp (char*,char*,int) ;

int
process_pkt (
 struct pkt *rpkt,
 sockaddr_u *sender,
 int pkt_len,
 int mode,
 struct pkt *spkt,
 const char * func_name
 )
{
 u_int key_id;
 struct key * pkt_key;
 int is_authentic;
 int mac_size;
 u_int exten_len;
 u_int32 * exten_end;
 u_int32 * packet_end;
 l_fp sent_xmt;
 l_fp resp_org;


 pkt_key = ((void*)0);
 is_authentic = (HAVE_OPT(AUTHENTICATION)) ? 0 : -1;
 if (pkt_len < (int)LEN_PKT_NOMAC || (pkt_len & 3) != 0) {
  msyslog(LOG_ERR,
   "%s: Incredible packet length: %d.  Discarding.",
   func_name, pkt_len);
  return PACKET_UNUSEABLE;
 }



 packet_end = (void*)((char*)rpkt + pkt_len);
 exten_end = skip_efields(rpkt->exten, packet_end);
 if (((void*)0) == exten_end) {
  msyslog(LOG_ERR,
   "%s: Missing extension field.  Discarding.",
   func_name);
  return PACKET_UNUSEABLE;
 }


 exten_len = (u_int)(packet_end - exten_end);


 switch (exten_len) {

 case 0:
  break;

 case 1:

  key_id = ntohl(*exten_end);
  printf("Crypto NAK = 0x%08x from %s\n", key_id, stoa(sender));
  break;

 case 3:
  msyslog(LOG_ERR,
   "%s: Key ID + 3DES MAC is unsupported.  Discarding.",
   func_name);
  return PACKET_UNUSEABLE;

 case 5:
 case 6:





  key_id = ntohl(*exten_end);
  get_key(key_id, &pkt_key);
  if (!pkt_key) {
   printf("unrecognized key ID = 0x%08x\n", key_id);
   break;
  }






  mac_size = exten_len << 2;
  if (!auth_md5(rpkt, pkt_len - mac_size,
         mac_size - 4, pkt_key)) {
   is_authentic = FALSE;
   break;
  }

  is_authentic = TRUE;
  TRACE(1, ("sntp %s: packet from %s authenticated using key id %d.\n",
     func_name, stoa(sender), key_id));
  break;

 default:
  msyslog(LOG_ERR,
   "%s: Unexpected extension length: %d.  Discarding.",
   func_name, exten_len);
  return PACKET_UNUSEABLE;
 }

 switch (is_authentic) {

 case -1:
  break;

 case 0:
  return SERVER_AUTH_FAIL;
  break;

 case 1:
  break;

 default:
  break;
 }


 if (PKT_VERSION(rpkt->li_vn_mode) < NTP_OLDVERSION ||
  PKT_VERSION(rpkt->li_vn_mode) > NTP_VERSION) {
  msyslog(LOG_ERR,
   "%s: Packet shows wrong version (%d)",
   func_name, PKT_VERSION(rpkt->li_vn_mode));
  return SERVER_UNUSEABLE;
 }

 if (PKT_MODE(rpkt->li_vn_mode) != mode &&
     PKT_MODE(rpkt->li_vn_mode) != MODE_PASSIVE) {
  msyslog(LOG_ERR,
   "%s: mode %d stratum %d", func_name,
   PKT_MODE(rpkt->li_vn_mode), rpkt->stratum);
  return SERVER_UNUSEABLE;
 }

 if (STRATUM_PKT_UNSPEC == rpkt->stratum) {
  char *ref_char;

  TRACE(1, ("%s: Stratum unspecified, going to check for KOD (stratum: %d)\n",
     func_name, rpkt->stratum));
  ref_char = (char *) &rpkt->refid;
  TRACE(1, ("%s: Packet refid: %c%c%c%c\n", func_name,
     ref_char[0], ref_char[1], ref_char[2], ref_char[3]));

  if (ref_char[0] != 'X') {
   if (strncmp(ref_char, "DENY", 4) == 0)
    return KOD_DEMOBILIZE;
   if (strncmp(ref_char, "RSTR", 4) == 0)
    return KOD_DEMOBILIZE;
   if (strncmp(ref_char, "RATE", 4) == 0)
    return KOD_RATE;




  }
 }

 if (LEAP_NOTINSYNC == PKT_LEAP(rpkt->li_vn_mode)) {
  msyslog(LOG_ERR,
   "%s: %s not in sync, skipping this server",
   func_name, stoa(sender));
  return SERVER_UNUSEABLE;
 }





 if (MODE_BROADCAST == mode)
  return pkt_len;

 if (!L_ISEQU(&rpkt->org, &spkt->xmt)) {
  NTOHL_FP(&rpkt->org, &resp_org);
  NTOHL_FP(&spkt->xmt, &sent_xmt);
  msyslog(LOG_ERR,
   "%s response org expected to match sent xmt",
   stoa(sender));
  msyslog(LOG_ERR, "resp org: %s", prettydate(&resp_org));
  msyslog(LOG_ERR, "sent xmt: %s", prettydate(&sent_xmt));
  return PACKET_UNUSEABLE;
 }

 return pkt_len;
}
