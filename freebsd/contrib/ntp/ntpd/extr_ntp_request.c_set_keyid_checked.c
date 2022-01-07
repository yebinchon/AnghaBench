
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req_pkt {int u; int err_nitems; } ;
typedef int sockaddr_u ;
typedef int keyid_t ;
typedef int endpt ;


 int INFO_ERR_FMT ;
 int INFO_ERR_NODATA ;
 int INFO_NITEMS (int ) ;
 int INFO_OKAY ;
 int LOG_ERR ;
 int NTP_MAXKEY ;
 int auth_havekey (int) ;
 int msyslog (int ,char*,char const*,...) ;
 int ntohl (int) ;
 int req_ack (int *,int *,struct req_pkt*,int ) ;

__attribute__((used)) static void
set_keyid_checked(
 keyid_t *into,
 const char *what,
 sockaddr_u *srcadr,
 endpt *inter,
 struct req_pkt *inpkt
 )
{
 keyid_t *pkeyid;
 keyid_t tmpkey;


 if (INFO_NITEMS(inpkt->err_nitems) > 1) {
  msyslog(LOG_ERR, "set_keyid_checked[%s]: err_nitems > 1",
   what);
  req_ack(srcadr, inter, inpkt, INFO_ERR_FMT);
  return;
 }


 pkeyid = (keyid_t *)&inpkt->u;
 tmpkey = ntohl(*pkeyid);


 if (tmpkey < 1 || tmpkey > NTP_MAXKEY || !auth_havekey(tmpkey)) {
  msyslog(LOG_ERR, "set_keyid_checked[%s]: invalid key id: %ld",
   what, (long)tmpkey);
  req_ack(srcadr, inter, inpkt, INFO_ERR_NODATA);
  return;
 }


 *into = tmpkey;
 req_ack(srcadr, inter, inpkt, INFO_OKAY);
}
