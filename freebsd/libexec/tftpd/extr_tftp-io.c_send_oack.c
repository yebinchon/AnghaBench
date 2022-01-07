
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
struct tftphdr {int th_opcode; } ;
struct sockaddr {int dummy; } ;
typedef int buf ;
struct TYPE_4__ {char* o_type; int * o_reply; } ;
struct TYPE_3__ {int ss_len; } ;


 int DEBUG_PACKETS ;
 int DROPPACKETn (char*,int ) ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_INFO ;
 int MAXPKTSIZE ;
 scalar_t__ OACK ;
 int debug ;
 int errno ;
 int exit (int) ;
 int htons (int ) ;
 TYPE_2__* options ;
 TYPE_1__ peer_sock ;
 int sendto (int,char*,int,int ,struct sockaddr*,int ) ;
 int snprintf (char*,int,char*,char*,int ,int *) ;
 int strerror (int ) ;
 int tftp_log (int ,char*,...) ;

int
send_oack(int peer)
{
 struct tftphdr *tp;
 int size, i, n;
 char *bp;
 char buf[MAXPKTSIZE];

 if (debug&DEBUG_PACKETS)
  tftp_log(LOG_DEBUG, "Sending OACK");

 DROPPACKETn("send_oack", 0);





 tp = (struct tftphdr *)buf;
 bp = buf + 2;
 size = sizeof(buf) - 2;
 tp->th_opcode = htons((u_short)OACK);
 for (i = 0; options[i].o_type != ((void*)0); i++) {
  if (options[i].o_reply != ((void*)0)) {
   n = snprintf(bp, size, "%s%c%s", options[i].o_type,
         0, options[i].o_reply);
   bp += n+1;
   size -= n+1;
   if (size < 0) {
    tftp_log(LOG_ERR, "oack: buffer overflow");
    exit(1);
   }
  }
 }
 size = bp - buf;

 if (sendto(peer, buf, size, 0,
  (struct sockaddr *)&peer_sock, peer_sock.ss_len) != size) {
  tftp_log(LOG_INFO, "send_oack: %s", strerror(errno));
  return (1);
 }

 return (0);
}
