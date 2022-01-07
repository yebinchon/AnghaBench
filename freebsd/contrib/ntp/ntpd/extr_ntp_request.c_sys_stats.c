
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
struct req_pkt {int dummy; } ;
struct info_sys_stats {void* tsrounding; void* lamport; void* received; void* limitrejected; void* badauth; void* processed; void* badlength; void* unknownversion; void* newversionpkt; void* oldversionpkt; void* denied; void* timereset; void* timeup; } ;
typedef int sockaddr_u ;
typedef int endpt ;


 scalar_t__ current_time ;
 int flush_pkt () ;
 void* htonl (int ) ;
 int more_pkt () ;
 scalar_t__ prepare_pkt (int *,int *,struct req_pkt*,int) ;
 scalar_t__ sys_badauth ;
 scalar_t__ sys_badlength ;
 scalar_t__ sys_declined ;
 scalar_t__ sys_lamport ;
 scalar_t__ sys_limitrejected ;
 scalar_t__ sys_newversion ;
 scalar_t__ sys_oldversion ;
 scalar_t__ sys_processed ;
 scalar_t__ sys_received ;
 scalar_t__ sys_restricted ;
 scalar_t__ sys_stattime ;
 scalar_t__ sys_tsrounding ;

__attribute__((used)) static void
sys_stats(
 sockaddr_u *srcadr,
 endpt *inter,
 struct req_pkt *inpkt
 )
{
 register struct info_sys_stats *ss;

 ss = (struct info_sys_stats *)prepare_pkt(srcadr, inter, inpkt,
  sizeof(struct info_sys_stats));
 ss->timeup = htonl((u_int32)current_time);
 ss->timereset = htonl((u_int32)(current_time - sys_stattime));
 ss->denied = htonl((u_int32)sys_restricted);
 ss->oldversionpkt = htonl((u_int32)sys_oldversion);
 ss->newversionpkt = htonl((u_int32)sys_newversion);
 ss->unknownversion = htonl((u_int32)sys_declined);
 ss->badlength = htonl((u_int32)sys_badlength);
 ss->processed = htonl((u_int32)sys_processed);
 ss->badauth = htonl((u_int32)sys_badauth);
 ss->limitrejected = htonl((u_int32)sys_limitrejected);
 ss->received = htonl((u_int32)sys_received);
 ss->lamport = htonl((u_int32)sys_lamport);
 ss->tsrounding = htonl((u_int32)sys_tsrounding);
 (void) more_pkt();
 flush_pkt();
}
