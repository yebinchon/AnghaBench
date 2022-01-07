
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int u_short ;
struct tftphdr {void* th_block; void* th_opcode; } ;
struct sockaddr {int dummy; } ;
typedef int buf ;
struct TYPE_2__ {int ss_len; } ;


 scalar_t__ ACK ;
 int DEBUG_PACKETS ;
 int DROPPACKETn (char*,int ) ;
 int LOG_DEBUG ;
 int LOG_INFO ;
 int MAXPKTSIZE ;
 int debug ;
 int errno ;
 void* htons (int ) ;
 TYPE_1__ peer_sock ;
 int sendto (int,char*,int,int ,struct sockaddr*,int ) ;
 scalar_t__ strerror (int ) ;
 int tftp_log (int ,char*,scalar_t__) ;

int
send_ack(int fp, uint16_t block)
{
 struct tftphdr *tp;
 int size;
 char buf[MAXPKTSIZE];

 if (debug&DEBUG_PACKETS)
  tftp_log(LOG_DEBUG, "Sending ACK for block %d", block);

 DROPPACKETn("send_ack", 0);

 tp = (struct tftphdr *)buf;
 size = sizeof(buf) - 2;
 tp->th_opcode = htons((u_short)ACK);
 tp->th_block = htons((u_short)block);
 size = 4;

 if (sendto(fp, buf, size, 0,
     (struct sockaddr *)&peer_sock, peer_sock.ss_len) != size) {
  tftp_log(LOG_INFO, "send_ack: %s", strerror(errno));
  return (1);
 }

 return (0);
}
