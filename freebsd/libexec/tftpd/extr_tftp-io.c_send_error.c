
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct tftphdr {char* th_msg; void* th_code; void* th_opcode; } ;
struct sockaddr {int dummy; } ;
struct errmsg {int e_code; int e_msg; } ;
struct TYPE_2__ {int ss_len; } ;


 int DEBUG_PACKETS ;
 int DROPPACKET (char*) ;
 scalar_t__ ERROR ;
 void* EUNDEF ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int MAXPKTSIZE ;
 int debug ;
 struct errmsg* errmsgs ;
 int errno ;
 void* htons (int ) ;
 TYPE_1__ peer_sock ;
 int sendto (int,char*,int,int ,struct sockaddr*,int ) ;
 int strcpy (char*,int) ;
 int strerror (int) ;
 int strlen (int) ;
 int tftp_log (int ,char*,int,...) ;

void
send_error(int peer, int error)
{
 struct tftphdr *tp;
 int length;
 struct errmsg *pe;
 char buf[MAXPKTSIZE];

 if (debug&DEBUG_PACKETS)
  tftp_log(LOG_DEBUG, "Sending ERROR %d", error);

 DROPPACKET("send_error");

 tp = (struct tftphdr *)buf;
 tp->th_opcode = htons((u_short)ERROR);
 tp->th_code = htons((u_short)error);
 for (pe = errmsgs; pe->e_code >= 0; pe++)
  if (pe->e_code == error)
   break;
 if (pe->e_code < 0) {
  pe->e_msg = strerror(error - 100);
  tp->th_code = EUNDEF;
 }
 strcpy(tp->th_msg, pe->e_msg);
 length = strlen(pe->e_msg);
 tp->th_msg[length] = '\0';
 length += 5;

 if (debug&DEBUG_PACKETS)
  tftp_log(LOG_DEBUG, "Sending ERROR %d: %s", error, tp->th_msg);

 if (sendto(peer, buf, length, 0,
  (struct sockaddr *)&peer_sock, peer_sock.ss_len) != length)
  tftp_log(LOG_ERR, "send_error: %s", strerror(errno));
}
