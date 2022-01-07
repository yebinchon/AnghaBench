
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct req_pkt {int rm_vn_mode; } ;
struct recvbuf {int recv_pkt; } ;


 int INFO_MODE (int ) ;

int
get_packet_mode(struct recvbuf *rbufp)
{
 struct req_pkt *inpkt = (struct req_pkt *)&rbufp->recv_pkt;
 return (INFO_MODE(inpkt->rm_vn_mode));
}
