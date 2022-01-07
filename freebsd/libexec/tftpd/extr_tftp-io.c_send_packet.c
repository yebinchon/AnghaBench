
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct tftphdr {int th_opcode; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int ss_len; } ;


 int DROPPACKETn (char*,int ) ;
 int LOG_ERR ;
 int errno ;
 int ntohs (int ) ;
 int packettype (int ) ;
 TYPE_1__ peer_sock ;
 int sendto (int,char*,int,int ,struct sockaddr*,int ) ;
 int sleep (int) ;
 int strerror (int ) ;
 int tftp_log (int ,char*,int ,...) ;

__attribute__((used)) static int
send_packet(int peer, uint16_t block, char *pkt, int size)
{
 int i;
 int t = 1;

 for (i = 0; i < 12 ; i++) {
  DROPPACKETn("send_packet", 0);

  if (sendto(peer, pkt, size, 0, (struct sockaddr *)&peer_sock,
      peer_sock.ss_len) == size) {
   if (i)
    tftp_log(LOG_ERR,
        "%s block %d, attempt %d successful",
            packettype(ntohs(((struct tftphdr *)
        (pkt))->th_opcode)), block, i);
   return (0);
  }
  tftp_log(LOG_ERR,
      "%s block %d, attempt %d failed (Error %d: %s)",
      packettype(ntohs(((struct tftphdr *)(pkt))->th_opcode)),
      block, i, errno, strerror(errno));
  sleep(t);
  if (t < 32)
   t <<= 1;
 }
 tftp_log(LOG_ERR, "send_packet: %s", strerror(errno));
 return (1);
}
