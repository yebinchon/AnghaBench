
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct tftphdr {scalar_t__ th_opcode; scalar_t__ th_block; int th_data; } ;
struct tftp_stats {int tstop; scalar_t__ amount; int retries; int blocks; int rollovers; } ;
struct TYPE_2__ {int * o_request; } ;


 scalar_t__ DATA ;
 int DEBUG_SIMPLE ;
 scalar_t__ ENOSPACE ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_INFO ;
 int LOG_WARNING ;
 int MAXPKTSIZE ;
 size_t OPT_ROLLOVER ;
 int RP_TIMEOUT ;
 scalar_t__ acting_as_client ;
 scalar_t__ atoi (int *) ;
 int debug ;
 scalar_t__ errno ;
 int gettimeofday (int *,int *) ;
 int maxtimeouts ;
 TYPE_1__* options ;
 scalar_t__ packettype (scalar_t__) ;
 int pktsize ;
 int receive_packet (int,char*,int,int *,int ) ;
 scalar_t__ rp_strerror (int) ;
 size_t segsize ;
 int send_ack (int,scalar_t__) ;
 int send_error (int,scalar_t__) ;
 int synchnet (int) ;
 int tftp_log (int ,char*,...) ;
 int timeoutpacket ;
 int write_close () ;
 int write_file (int ,int) ;

void
tftp_receive(int peer, uint16_t *block, struct tftp_stats *ts,
    struct tftphdr *firstblock, size_t fb_size)
{
 struct tftphdr *rp;
 uint16_t oldblock;
 int n_data, n_ack, writesize, i, retry;
 char recvbuffer[MAXPKTSIZE];

 ts->amount = 0;

 if (firstblock != ((void*)0)) {
  writesize = write_file(firstblock->th_data, fb_size);
  ts->amount += writesize;
  for (i = 0; ; i++) {
   n_ack = send_ack(peer, *block);
   if (n_ack > 0) {
    if (i == maxtimeouts) {
     tftp_log(LOG_ERR,
         "Cannot send ACK packet #%d, "
         "giving up", *block);
     return;
    }
    tftp_log(LOG_ERR,
        "Cannot send ACK packet #%d, trying again",
        *block);
    continue;
   }

   break;
  }

  if (fb_size != segsize) {
   gettimeofday(&(ts->tstop), ((void*)0));
   return;
  }
 }

 rp = (struct tftphdr *)recvbuffer;
 do {
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

  for (retry = 0; ; retry++) {
   if (debug&DEBUG_SIMPLE)
    tftp_log(LOG_DEBUG,
        "Receiving DATA block %d", *block);

   n_data = receive_packet(peer, recvbuffer,
       MAXPKTSIZE, ((void*)0), timeoutpacket);
   if (n_data < 0) {
    if (retry == maxtimeouts) {
     tftp_log(LOG_ERR,
         "Timeout #%d on DATA block %d, "
         "giving up", retry, *block);
     return;
    }
    if (n_data == RP_TIMEOUT) {
     tftp_log(LOG_WARNING,
         "Timeout #%d on DATA block %d",
         retry, *block);
     send_ack(peer, oldblock);
     continue;
    }


    if (debug&DEBUG_SIMPLE)
     tftp_log(LOG_DEBUG, "Aborting: %s",
         rp_strerror(n_data));
    goto abort;
   }
   if (rp->th_opcode == DATA) {
    ts->blocks++;

    if (rp->th_block == *block)
     break;

    tftp_log(LOG_WARNING,
        "Expected DATA block %d, got block %d",
        *block, rp->th_block);


    (void) synchnet(peer);
    if (rp->th_block == (*block-1)) {
     tftp_log(LOG_INFO, "Trying to sync");
     *block = oldblock;
     ts->retries++;
     goto send_ack;
    }

   } else {
    tftp_log(LOG_WARNING,
        "Expected DATA block, got %s block",
        packettype(rp->th_opcode));
   }
  }

  if (n_data > 0) {
   writesize = write_file(rp->th_data, n_data);
   ts->amount += writesize;
   if (writesize <= 0) {
    tftp_log(LOG_ERR,
        "write_file returned %d", writesize);
    if (writesize < 0)
     send_error(peer, errno + 100);
    else
     send_error(peer, ENOSPACE);
    goto abort;
   }
   if (n_data != segsize)
    write_close();
  }

send_ack:
  for (i = 0; ; i++) {
   n_ack = send_ack(peer, *block);
   if (n_ack > 0) {

    if (i == maxtimeouts) {
     tftp_log(LOG_ERR,
         "Cannot send ACK packet #%d, "
         "giving up", *block);
     return;
    }

    tftp_log(LOG_ERR,
        "Cannot send ACK packet #%d, trying again",
        *block);
    continue;
   }

   break;
  }
  gettimeofday(&(ts->tstop), ((void*)0));
 } while (n_data == segsize);


 if (acting_as_client)
  return;

 for (i = 0; ; i++) {
  n_data = receive_packet(peer, (char *)rp, pktsize,
      ((void*)0), timeoutpacket);
  if (n_data <= 0)
   break;
  if (n_data > 0 &&
      rp->th_opcode == DATA &&
      *block == rp->th_block)
   send_ack(peer, *block);
 }

abort:
 return;
}
