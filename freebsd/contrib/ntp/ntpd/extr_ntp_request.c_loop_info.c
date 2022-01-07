
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
struct req_pkt {int dummy; } ;
struct info_loop {void* watchdog_timer; void* compliance; int drift_comp; int last_offset; } ;
typedef int sockaddr_u ;
typedef int l_fp ;
typedef int endpt ;


 int DTOLFP (int,int *) ;
 int HTONL_FP (int *,int *) ;
 scalar_t__ current_time ;
 int drift_comp ;
 int flush_pkt () ;
 void* htonl (int ) ;
 int last_offset ;
 int more_pkt () ;
 scalar_t__ prepare_pkt (int *,int *,struct req_pkt*,int) ;
 scalar_t__ sys_epoch ;
 scalar_t__ tc_counter ;

__attribute__((used)) static void
loop_info(
 sockaddr_u *srcadr,
 endpt *inter,
 struct req_pkt *inpkt
 )
{
 struct info_loop *li;
 l_fp ltmp;

 li = (struct info_loop *)prepare_pkt(srcadr, inter, inpkt,
     sizeof(struct info_loop));

 DTOLFP(last_offset, &ltmp);
 HTONL_FP(&ltmp, &li->last_offset);
 DTOLFP(drift_comp * 1e6, &ltmp);
 HTONL_FP(&ltmp, &li->drift_comp);
 li->compliance = htonl((u_int32)(tc_counter));
 li->watchdog_timer = htonl((u_int32)(current_time - sys_epoch));

 (void) more_pkt();
 flush_pkt();
}
