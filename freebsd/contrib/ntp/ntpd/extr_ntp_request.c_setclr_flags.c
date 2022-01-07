
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int32 ;
struct req_pkt {int u; int err_nitems; } ;
struct conf_sys_flags {int flags; } ;
typedef int sockaddr_u ;
typedef int endpt ;


 int INFO_ERR_FMT ;
 int INFO_NITEMS (int ) ;
 int INFO_OKAY ;
 int LOG_ERR ;
 int PROTO_AUTHENTICATE ;
 int PROTO_BROADCLIENT ;
 int PROTO_CAL ;
 int PROTO_FILEGEN ;
 int PROTO_KERNEL ;
 int PROTO_MONITOR ;
 int PROTO_NTP ;
 int PROTO_PPS ;
 int SYS_FLAG_AUTH ;
 int SYS_FLAG_BCLIENT ;
 int SYS_FLAG_CAL ;
 int SYS_FLAG_FILEGEN ;
 int SYS_FLAG_KERNEL ;
 int SYS_FLAG_MONITOR ;
 int SYS_FLAG_NTP ;
 int SYS_FLAG_PPS ;
 int msyslog (int ,char*,...) ;
 int ntohl (int ) ;
 int proto_config (int ,int ,int,int *) ;
 int req_ack (int *,int *,struct req_pkt*,int ) ;

__attribute__((used)) static void
setclr_flags(
 sockaddr_u *srcadr,
 endpt *inter,
 struct req_pkt *inpkt,
 u_long set
 )
{
 struct conf_sys_flags *sf;
 u_int32 flags;

 if (INFO_NITEMS(inpkt->err_nitems) > 1) {
  msyslog(LOG_ERR, "setclr_flags: err_nitems > 1");
  req_ack(srcadr, inter, inpkt, INFO_ERR_FMT);
  return;
 }

 sf = (struct conf_sys_flags *)&inpkt->u;
 flags = ntohl(sf->flags);

 if (flags & ~(SYS_FLAG_BCLIENT | SYS_FLAG_PPS |
        SYS_FLAG_NTP | SYS_FLAG_KERNEL | SYS_FLAG_MONITOR |
        SYS_FLAG_FILEGEN | SYS_FLAG_AUTH | SYS_FLAG_CAL)) {
  msyslog(LOG_ERR, "setclr_flags: extra flags: %#x",
   flags & ~(SYS_FLAG_BCLIENT | SYS_FLAG_PPS |
      SYS_FLAG_NTP | SYS_FLAG_KERNEL |
      SYS_FLAG_MONITOR | SYS_FLAG_FILEGEN |
      SYS_FLAG_AUTH | SYS_FLAG_CAL));
  req_ack(srcadr, inter, inpkt, INFO_ERR_FMT);
  return;
 }

 if (flags & SYS_FLAG_BCLIENT)
  proto_config(PROTO_BROADCLIENT, set, 0., ((void*)0));
 if (flags & SYS_FLAG_PPS)
  proto_config(PROTO_PPS, set, 0., ((void*)0));
 if (flags & SYS_FLAG_NTP)
  proto_config(PROTO_NTP, set, 0., ((void*)0));
 if (flags & SYS_FLAG_KERNEL)
  proto_config(PROTO_KERNEL, set, 0., ((void*)0));
 if (flags & SYS_FLAG_MONITOR)
  proto_config(PROTO_MONITOR, set, 0., ((void*)0));
 if (flags & SYS_FLAG_FILEGEN)
  proto_config(PROTO_FILEGEN, set, 0., ((void*)0));
 if (flags & SYS_FLAG_AUTH)
  proto_config(PROTO_AUTHENTICATE, set, 0., ((void*)0));
 if (flags & SYS_FLAG_CAL)
  proto_config(PROTO_CAL, set, 0., ((void*)0));
 req_ack(srcadr, inter, inpkt, INFO_OKAY);
}
