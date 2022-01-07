
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct tftphdr {scalar_t__ th_opcode; int th_block; } ;
struct tftp_stats {int tstop; int rollovers; int retries; scalar_t__ amount; int blocks; } ;
struct TYPE_2__ {int * o_request; } ;


 scalar_t__ ACK ;
 int DEBUG_SIMPLE ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_WARNING ;
 int MAXPKTSIZE ;
 size_t OPT_ROLLOVER ;
 int RP_TIMEOUT ;
 int atoi (int *) ;
 int debug ;
 scalar_t__ errno ;
 int gettimeofday (int *,int *) ;
 int maxtimeouts ;
 TYPE_1__* options ;
 int read_file (char*,int) ;
 int receive_packet (int,char*,int,int *,int ) ;
 int rp_strerror (int) ;
 int segsize ;
 int send_data (int,int,char*,int) ;
 int send_error (int,scalar_t__) ;
 int synchnet (int) ;
 int tftp_log (int ,char*,int,...) ;
 int timeoutpacket ;

void
tftp_send(int peer, uint16_t *block, struct tftp_stats *ts)
{
 struct tftphdr *rp;
 int size, n_data, n_ack, try;
 uint16_t oldblock;
 char sendbuffer[MAXPKTSIZE];
 char recvbuffer[MAXPKTSIZE];

 rp = (struct tftphdr *)recvbuffer;
 *block = 1;
 ts->amount = 0;
 do {
  if (debug&DEBUG_SIMPLE)
   tftp_log(LOG_DEBUG, "Sending block %d", *block);

  size = read_file(sendbuffer, segsize);
  if (size < 0) {
   tftp_log(LOG_ERR, "read_file returned %d", size);
   send_error(peer, errno + 100);
   goto abort;
  }

  for (try = 0; ; try++) {
   n_data = send_data(peer, *block, sendbuffer, size);
   if (n_data > 0) {
    if (try == maxtimeouts) {
     tftp_log(LOG_ERR,
         "Cannot send DATA packet #%d, "
         "giving up", *block);
     return;
    }
    tftp_log(LOG_ERR,
        "Cannot send DATA packet #%d, trying again",
        *block);
    continue;
   }

   n_ack = receive_packet(peer, recvbuffer,
       MAXPKTSIZE, ((void*)0), timeoutpacket);
   if (n_ack < 0) {
    if (n_ack == RP_TIMEOUT) {
     if (try == maxtimeouts) {
      tftp_log(LOG_ERR,
          "Timeout #%d send ACK %d "
          "giving up", try, *block);
      return;
     }
     tftp_log(LOG_WARNING,
         "Timeout #%d on ACK %d",
         try, *block);
     continue;
    }


    if (debug&DEBUG_SIMPLE)
     tftp_log(LOG_ERR, "Aborting: %s",
         rp_strerror(n_ack));
    goto abort;
   }
   if (rp->th_opcode == ACK) {
    ts->blocks++;
    if (rp->th_block == *block) {
     ts->amount += size;
     break;
    }


    (void) synchnet(peer);
    if (rp->th_block == (*block - 1)) {
     ts->retries++;
     continue;
    }
   }

  }
  oldblock = *block;
  (*block)++;
  if (oldblock > *block) {
   if (options[OPT_ROLLOVER].o_request == ((void*)0)) {





    *block = 0;
   } else {
    *block = atoi(options[OPT_ROLLOVER].o_request);
   }

   ts->rollovers++;
  }
  gettimeofday(&(ts->tstop), ((void*)0));
 } while (size == segsize);
abort:
 return;
}
