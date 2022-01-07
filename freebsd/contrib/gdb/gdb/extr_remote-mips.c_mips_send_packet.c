
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DATA_MAXLEN ;
 int HDR_GET_LEN (unsigned char*) ;
 unsigned int HDR_GET_SEQ (unsigned char*) ;
 size_t HDR_INDX_LEN1 ;
 size_t HDR_INDX_SEQ ;
 size_t HDR_INDX_SYN ;
 size_t HDR_INDX_TYPE_LEN ;
 scalar_t__ HDR_IS_DATA (unsigned char*) ;
 int HDR_LENGTH ;
 unsigned char HDR_SET_LEN1 (int,int,int) ;
 unsigned char HDR_SET_SEQ (int,int,int) ;
 unsigned char HDR_SET_SYN (int,int,int) ;
 unsigned char HDR_SET_TYPE_LEN (int,int,int) ;
 int SEQ_MODULOS ;
 int SERIAL_TIMEOUT ;
 int SYN ;
 scalar_t__ TRLR_GET_CKSUM (unsigned char*) ;
 int TRLR_INDX_CSUM1 ;
 int TRLR_INDX_CSUM2 ;
 int TRLR_INDX_CSUM3 ;
 int TRLR_LENGTH ;
 unsigned char TRLR_SET_CSUM1 (int) ;
 unsigned char TRLR_SET_CSUM2 (int) ;
 unsigned char TRLR_SET_CSUM3 (int) ;
 scalar_t__ alloca (int) ;
 int errno ;
 int fprintf_unfiltered (int ,char*,...) ;
 int gdb_stdlog ;
 int memcpy (unsigned char*,char const*,int) ;
 scalar_t__ mips_cksum (unsigned char*,unsigned char*,int) ;
 int mips_desc ;
 int mips_error (char*,...) ;
 int mips_readchar (int ) ;
 int mips_receive_header (unsigned char*,int*,int,int ) ;
 int mips_receive_trailer (unsigned char*,int*,int*,int ) ;
 int mips_retransmit_wait ;
 int mips_send_retries ;
 int mips_send_seq ;
 scalar_t__ remote_debug ;
 int remote_timeout ;
 int safe_strerror (int ) ;
 scalar_t__ serial_write (int ,unsigned char*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void
mips_send_packet (const char *s, int get_ack)
{
                 int len;
  unsigned char *packet;
  int cksum;
  int try;

  len = strlen (s);
  if (len > DATA_MAXLEN)
    mips_error ("MIPS protocol data packet too long: %s", s);

  packet = (unsigned char *) alloca (HDR_LENGTH + len + TRLR_LENGTH + 1);

  packet[HDR_INDX_SYN] = HDR_SET_SYN (1, len, mips_send_seq);
  packet[HDR_INDX_TYPE_LEN] = HDR_SET_TYPE_LEN (1, len, mips_send_seq);
  packet[HDR_INDX_LEN1] = HDR_SET_LEN1 (1, len, mips_send_seq);
  packet[HDR_INDX_SEQ] = HDR_SET_SEQ (1, len, mips_send_seq);

  memcpy (packet + HDR_LENGTH, s, len);

  cksum = mips_cksum (packet, packet + HDR_LENGTH, len);
  packet[HDR_LENGTH + len + TRLR_INDX_CSUM1] = TRLR_SET_CSUM1 (cksum);
  packet[HDR_LENGTH + len + TRLR_INDX_CSUM2] = TRLR_SET_CSUM2 (cksum);
  packet[HDR_LENGTH + len + TRLR_INDX_CSUM3] = TRLR_SET_CSUM3 (cksum);



  mips_send_seq = (mips_send_seq + 1) % SEQ_MODULOS;




  for (try = 0; try < mips_send_retries; try++)
    {
      int garbage;
      int ch;

      if (remote_debug > 0)
 {


   packet[HDR_LENGTH + len + TRLR_LENGTH] = '\0';
   fprintf_unfiltered (gdb_stdlog, "Writing \"%s\"\n", packet + 1);
 }

      if (serial_write (mips_desc, packet,
   HDR_LENGTH + len + TRLR_LENGTH) != 0)
 mips_error ("write to target failed: %s", safe_strerror (errno));

      if (!get_ack)
 return;

      garbage = 0;
      ch = 0;
      while (1)
 {
   unsigned char hdr[HDR_LENGTH + 1];
   unsigned char trlr[TRLR_LENGTH + 1];
   int err;
   unsigned int seq;



   err = mips_receive_header (hdr, &garbage, ch, mips_retransmit_wait);
   if (err != 0)
     break;

   ch = 0;





   if (HDR_IS_DATA (hdr))
     {
       int i;




       len = HDR_GET_LEN (hdr);

       for (i = 0; i < len; i++)
  {
    int rch;

    rch = mips_readchar (remote_timeout);
    if (rch == SYN)
      {
        ch = SYN;
        break;
      }
    if (rch == SERIAL_TIMEOUT)
      break;

  }

       if (i == len)
  (void) mips_receive_trailer (trlr, &garbage, &ch,
          remote_timeout);



       continue;
     }


   if (HDR_GET_LEN (hdr) != 0)
     continue;


   err = mips_receive_trailer (trlr, &garbage, &ch,
          mips_retransmit_wait);


   if (err == -1)
     break;


   if (err != 0)
     continue;



   if (mips_cksum (hdr, (unsigned char *) ((void*)0), 0)
       != TRLR_GET_CKSUM (trlr))
     continue;

   if (remote_debug > 0)
     {
       hdr[HDR_LENGTH] = '\0';
       trlr[TRLR_LENGTH] = '\0';


       fprintf_unfiltered (gdb_stdlog, "Got ack %d \"%s%s\"\n",
      HDR_GET_SEQ (hdr), hdr + 1, trlr);
     }


   seq = HDR_GET_SEQ (hdr);
   if (seq == mips_send_seq)
     return;



   if ((seq + 1) % SEQ_MODULOS == mips_send_seq)
     break;




   ++garbage;
 }
    }

  mips_error ("Remote did not acknowledge packet");
}
