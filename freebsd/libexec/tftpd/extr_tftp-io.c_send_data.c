
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int u_short ;
struct tftphdr {int th_data; void* th_block; void* th_opcode; } ;


 scalar_t__ DATA ;
 int DEBUG_PACKETS ;
 int DROPPACKETn (char*,int ) ;
 int LOG_DEBUG ;
 int MAXPKTSIZE ;
 int debug ;
 void* htons (int ) ;
 int memcpy (int ,char*,int) ;
 int send_packet (int,scalar_t__,char*,int) ;
 int tftp_log (int ,char*,scalar_t__,int) ;

int
send_data(int peer, uint16_t block, char *data, int size)
{
 char buf[MAXPKTSIZE];
 struct tftphdr *pkt;
 int n;

 if (debug&DEBUG_PACKETS)
  tftp_log(LOG_DEBUG, "Sending DATA packet %d of %d bytes",
   block, size);

 DROPPACKETn("send_data", 0);

 pkt = (struct tftphdr *)buf;

 pkt->th_opcode = htons((u_short)DATA);
 pkt->th_block = htons((u_short)block);
 memcpy(pkt->th_data, data, size);

 n = send_packet(peer, block, (char *)pkt, size + 4);
 return (n);
}
