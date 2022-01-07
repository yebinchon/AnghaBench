
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_int32 ;
struct req_pkt {int dummy; } ;
struct info_io_stats {void* int_received; void* interrupts; void* notsent; void* sent; void* received; void* ignored; void* dropped; void* lowwater; void* fullrecvbufs; void* freerecvbufs; void* totalrecvbufs; void* timereset; } ;
typedef int sockaddr_u ;
typedef int endpt ;


 scalar_t__ current_time ;
 int flush_pkt () ;
 scalar_t__ free_recvbuffs () ;
 scalar_t__ full_recvbuffs () ;
 scalar_t__ handler_calls ;
 scalar_t__ handler_pkts ;
 void* htonl (int ) ;
 void* htons (int ) ;
 scalar_t__ io_timereset ;
 scalar_t__ lowater_additions () ;
 int more_pkt () ;
 scalar_t__ packets_dropped ;
 scalar_t__ packets_ignored ;
 scalar_t__ packets_notsent ;
 scalar_t__ packets_received ;
 scalar_t__ packets_sent ;
 scalar_t__ prepare_pkt (int *,int *,struct req_pkt*,int) ;
 scalar_t__ total_recvbuffs () ;

__attribute__((used)) static void
io_stats(
 sockaddr_u *srcadr,
 endpt *inter,
 struct req_pkt *inpkt
 )
{
 struct info_io_stats *io;

 io = (struct info_io_stats *)prepare_pkt(srcadr, inter, inpkt,
       sizeof(struct info_io_stats));

 io->timereset = htonl((u_int32)(current_time - io_timereset));
 io->totalrecvbufs = htons((u_short) total_recvbuffs());
 io->freerecvbufs = htons((u_short) free_recvbuffs());
 io->fullrecvbufs = htons((u_short) full_recvbuffs());
 io->lowwater = htons((u_short) lowater_additions());
 io->dropped = htonl((u_int32)packets_dropped);
 io->ignored = htonl((u_int32)packets_ignored);
 io->received = htonl((u_int32)packets_received);
 io->sent = htonl((u_int32)packets_sent);
 io->notsent = htonl((u_int32)packets_notsent);
 io->interrupts = htonl((u_int32)handler_calls);
 io->int_received = htonl((u_int32)handler_pkts);

 (void) more_pkt();
 flush_pkt();
}
