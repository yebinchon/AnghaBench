#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int DATA_MAXLEN ; 
 int FUNC0 (unsigned char*) ; 
 unsigned int FUNC1 (unsigned char*) ; 
 size_t HDR_INDX_LEN1 ; 
 size_t HDR_INDX_SEQ ; 
 size_t HDR_INDX_SYN ; 
 size_t HDR_INDX_TYPE_LEN ; 
 scalar_t__ FUNC2 (unsigned char*) ; 
 int HDR_LENGTH ; 
 unsigned char FUNC3 (int,int,int) ; 
 unsigned char FUNC4 (int,int,int) ; 
 unsigned char FUNC5 (int,int,int) ; 
 unsigned char FUNC6 (int,int,int) ; 
 int SEQ_MODULOS ; 
 int SERIAL_TIMEOUT ; 
 int SYN ; 
 scalar_t__ FUNC7 (unsigned char*) ; 
 int TRLR_INDX_CSUM1 ; 
 int TRLR_INDX_CSUM2 ; 
 int TRLR_INDX_CSUM3 ; 
 int TRLR_LENGTH ; 
 unsigned char FUNC8 (int) ; 
 unsigned char FUNC9 (int) ; 
 unsigned char FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,char const*,int) ; 
 scalar_t__ FUNC14 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  mips_desc ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (unsigned char*,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC18 (unsigned char*,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mips_retransmit_wait ; 
 int mips_send_retries ; 
 int mips_send_seq ; 
 scalar_t__ remote_debug ; 
 int /*<<< orphan*/  remote_timeout ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC21 (char const*) ; 

__attribute__((used)) static void
FUNC22 (const char *s, int get_ack)
{
  /* unsigned */ int len;
  unsigned char *packet;
  int cksum;
  int try;

  len = FUNC21 (s);
  if (len > DATA_MAXLEN)
    FUNC15 ("MIPS protocol data packet too long: %s", s);

  packet = (unsigned char *) FUNC11 (HDR_LENGTH + len + TRLR_LENGTH + 1);

  packet[HDR_INDX_SYN] = FUNC5 (1, len, mips_send_seq);
  packet[HDR_INDX_TYPE_LEN] = FUNC6 (1, len, mips_send_seq);
  packet[HDR_INDX_LEN1] = FUNC3 (1, len, mips_send_seq);
  packet[HDR_INDX_SEQ] = FUNC4 (1, len, mips_send_seq);

  FUNC13 (packet + HDR_LENGTH, s, len);

  cksum = FUNC14 (packet, packet + HDR_LENGTH, len);
  packet[HDR_LENGTH + len + TRLR_INDX_CSUM1] = FUNC8 (cksum);
  packet[HDR_LENGTH + len + TRLR_INDX_CSUM2] = FUNC9 (cksum);
  packet[HDR_LENGTH + len + TRLR_INDX_CSUM3] = FUNC10 (cksum);

  /* Increment the sequence number.  This will set mips_send_seq to
     the sequence number we expect in the acknowledgement.  */
  mips_send_seq = (mips_send_seq + 1) % SEQ_MODULOS;

  /* We can only have one outstanding data packet, so we just wait for
     the acknowledgement here.  Keep retransmitting the packet until
     we get one, or until we've tried too many times.  */
  for (try = 0; try < mips_send_retries; try++)
    {
      int garbage;
      int ch;

      if (remote_debug > 0)
	{
	  /* Don't use _filtered; we can't deal with a QUIT out of
	     target_wait, and I think this might be called from there.  */
	  packet[HDR_LENGTH + len + TRLR_LENGTH] = '\0';
	  FUNC12 (gdb_stdlog, "Writing \"%s\"\n", packet + 1);
	}

      if (FUNC20 (mips_desc, packet,
			HDR_LENGTH + len + TRLR_LENGTH) != 0)
	FUNC15 ("write to target failed: %s", FUNC19 (errno));

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

	  /* Get the packet header.  If we time out, resend the data
	     packet.  */
	  err = FUNC17 (hdr, &garbage, ch, mips_retransmit_wait);
	  if (err != 0)
	    break;

	  ch = 0;

	  /* If we get a data packet, assume it is a duplicate and
	     ignore it.  FIXME: If the acknowledgement is lost, this
	     data packet may be the packet the remote sends after the
	     acknowledgement.  */
	  if (FUNC2 (hdr))
	    {
	      int i;

	      /* Ignore any errors raised whilst attempting to ignore
	         packet. */

	      len = FUNC0 (hdr);

	      for (i = 0; i < len; i++)
		{
		  int rch;

		  rch = FUNC16 (remote_timeout);
		  if (rch == SYN)
		    {
		      ch = SYN;
		      break;
		    }
		  if (rch == SERIAL_TIMEOUT)
		    break;
		  /* ignore the character */
		}

	      if (i == len)
		(void) FUNC18 (trlr, &garbage, &ch,
					     remote_timeout);

	      /* We don't bother checking the checksum, or providing an
	         ACK to the packet. */
	      continue;
	    }

	  /* If the length is not 0, this is a garbled packet.  */
	  if (FUNC0 (hdr) != 0)
	    continue;

	  /* Get the packet trailer.  */
	  err = FUNC18 (trlr, &garbage, &ch,
				      mips_retransmit_wait);

	  /* If we timed out, resend the data packet.  */
	  if (err == -1)
	    break;

	  /* If we got a bad character, reread the header.  */
	  if (err != 0)
	    continue;

	  /* If the checksum does not match the trailer checksum, this
	     is a bad packet; ignore it.  */
	  if (FUNC14 (hdr, (unsigned char *) NULL, 0)
	      != FUNC7 (trlr))
	    continue;

	  if (remote_debug > 0)
	    {
	      hdr[HDR_LENGTH] = '\0';
	      trlr[TRLR_LENGTH] = '\0';
	      /* Don't use _filtered; we can't deal with a QUIT out of
	         target_wait, and I think this might be called from there.  */
	      FUNC12 (gdb_stdlog, "Got ack %d \"%s%s\"\n",
				  FUNC1 (hdr), hdr + 1, trlr);
	    }

	  /* If this ack is for the current packet, we're done.  */
	  seq = FUNC1 (hdr);
	  if (seq == mips_send_seq)
	    return;

	  /* If this ack is for the last packet, resend the current
	     packet.  */
	  if ((seq + 1) % SEQ_MODULOS == mips_send_seq)
	    break;

	  /* Otherwise this is a bad ack; ignore it.  Increment the
	     garbage count to ensure that we do not stay in this loop
	     forever.  */
	  ++garbage;
	}
    }

  FUNC15 ("Remote did not acknowledge packet");
}