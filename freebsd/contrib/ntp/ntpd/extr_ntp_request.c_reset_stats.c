
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct reset_flags {int flags; } ;
struct reset_entry {int flag; int (* handler ) () ;} ;
struct req_pkt {int u; int err_nitems; } ;
typedef int sockaddr_u ;
typedef int endpt ;


 int INFO_ERR_FMT ;
 int INFO_NITEMS (int ) ;
 int INFO_OKAY ;
 int LOG_ERR ;
 int RESET_ALLFLAGS ;
 int msyslog (int ,char*,...) ;
 int ntohl (int ) ;
 int req_ack (int *,int *,struct req_pkt*,int ) ;
 struct reset_entry* reset_entries ;
 int stub1 () ;

__attribute__((used)) static void
reset_stats(
 sockaddr_u *srcadr,
 endpt *inter,
 struct req_pkt *inpkt
 )
{
 struct reset_flags *rflags;
 u_long flags;
 struct reset_entry *rent;

 if (INFO_NITEMS(inpkt->err_nitems) > 1) {
  msyslog(LOG_ERR, "reset_stats: err_nitems > 1");
  req_ack(srcadr, inter, inpkt, INFO_ERR_FMT);
  return;
 }

 rflags = (struct reset_flags *)&inpkt->u;
 flags = ntohl(rflags->flags);

 if (flags & ~RESET_ALLFLAGS) {
  msyslog(LOG_ERR, "reset_stats: reset leaves %#lx",
   flags & ~RESET_ALLFLAGS);
  req_ack(srcadr, inter, inpkt, INFO_ERR_FMT);
  return;
 }

 for (rent = reset_entries; rent->flag != 0; rent++) {
  if (flags & rent->flag)
   (*rent->handler)();
 }
 req_ack(srcadr, inter, inpkt, INFO_OKAY);
}
