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
 int FUNC0 (unsigned char*) ; 
 int FUNC1 (unsigned char*) ; 
 size_t HDR_INDX_LEN1 ; 
 size_t HDR_INDX_SEQ ; 
 size_t HDR_INDX_SYN ; 
 size_t HDR_INDX_TYPE_LEN ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int HDR_LENGTH ; 
 unsigned char FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned char FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned char FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned char FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int SEQ_MODULOS ; 
 int SERIAL_TIMEOUT ; 
 int SYN ; 
 unsigned char* FUNC7 (unsigned char*) ; 
 int TRLR_INDX_CSUM1 ; 
 int TRLR_INDX_CSUM2 ; 
 int TRLR_INDX_CSUM3 ; 
 int TRLR_LENGTH ; 
 unsigned char FUNC8 (int) ; 
 unsigned char FUNC9 (int) ; 
 unsigned char FUNC10 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int FUNC12 (unsigned char*,...) ; 
 int /*<<< orphan*/  mips_desc ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int FUNC14 (int) ; 
 scalar_t__ FUNC15 (unsigned char*,int*,int,int) ; 
 int mips_receive_seq ; 
 int FUNC16 (unsigned char*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 scalar_t__ remote_debug ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static int
FUNC20 (char *buff, int throw_error, int timeout)
{
  int ch;
  int garbage;
  int len;
  unsigned char ack[HDR_LENGTH + TRLR_LENGTH + 1];
  int cksum;

  ch = 0;
  garbage = 0;
  while (1)
    {
      unsigned char hdr[HDR_LENGTH];
      unsigned char trlr[TRLR_LENGTH];
      int i;
      int err;

      if (FUNC15 (hdr, &garbage, ch, timeout) != 0)
	{
	  if (throw_error)
	    FUNC13 ("Timed out waiting for remote packet");
	  else
	    return -1;
	}

      ch = 0;

      /* An acknowledgement is probably a duplicate; ignore it.  */
      if (!FUNC2 (hdr))
	{
	  len = FUNC0 (hdr);
	  /* Check if the length is valid for an ACK, we may aswell
	     try and read the remainder of the packet: */
	  if (len == 0)
	    {
	      /* Ignore the error condition, since we are going to
	         ignore the packet anyway. */
	      (void) FUNC16 (trlr, &garbage, &ch, timeout);
	    }
	  /* Don't use _filtered; we can't deal with a QUIT out of
	     target_wait, and I think this might be called from there.  */
	  if (remote_debug > 0)
	    FUNC11 (gdb_stdlog, "Ignoring unexpected ACK\n");
	  continue;
	}

      len = FUNC0 (hdr);
      for (i = 0; i < len; i++)
	{
	  int rch;

	  rch = FUNC14 (timeout);
	  if (rch == SYN)
	    {
	      ch = SYN;
	      break;
	    }
	  if (rch == SERIAL_TIMEOUT)
	    {
	      if (throw_error)
		FUNC13 ("Timed out waiting for remote packet");
	      else
		return -1;
	    }
	  buff[i] = rch;
	}

      if (i < len)
	{
	  /* Don't use _filtered; we can't deal with a QUIT out of
	     target_wait, and I think this might be called from there.  */
	  if (remote_debug > 0)
	    FUNC11 (gdb_stdlog,
				"Got new SYN after %d chars (wanted %d)\n",
				i, len);
	  continue;
	}

      err = FUNC16 (trlr, &garbage, &ch, timeout);
      if (err == -1)
	{
	  if (throw_error)
	    FUNC13 ("Timed out waiting for packet");
	  else
	    return -1;
	}
      if (err == -2)
	{
	  /* Don't use _filtered; we can't deal with a QUIT out of
	     target_wait, and I think this might be called from there.  */
	  if (remote_debug > 0)
	    FUNC11 (gdb_stdlog, "Got SYN when wanted trailer\n");
	  continue;
	}

      /* If this is the wrong sequence number, ignore it.  */
      if (FUNC1 (hdr) != mips_receive_seq)
	{
	  /* Don't use _filtered; we can't deal with a QUIT out of
	     target_wait, and I think this might be called from there.  */
	  if (remote_debug > 0)
	    FUNC11 (gdb_stdlog,
				"Ignoring sequence number %d (want %d)\n",
				FUNC1 (hdr), mips_receive_seq);
	  continue;
	}

      if (FUNC12 (hdr, buff, len) == FUNC7 (trlr))
	break;

      if (remote_debug > 0)
	/* Don't use _filtered; we can't deal with a QUIT out of
	   target_wait, and I think this might be called from there.  */
	FUNC17 ("Bad checksum; data %d, trailer %d\n",
			   FUNC12 (hdr, buff, len),
			   FUNC7 (trlr));

      /* The checksum failed.  Send an acknowledgement for the
         previous packet to tell the remote to resend the packet.  */
      ack[HDR_INDX_SYN] = FUNC5 (0, 0, mips_receive_seq);
      ack[HDR_INDX_TYPE_LEN] = FUNC6 (0, 0, mips_receive_seq);
      ack[HDR_INDX_LEN1] = FUNC3 (0, 0, mips_receive_seq);
      ack[HDR_INDX_SEQ] = FUNC4 (0, 0, mips_receive_seq);

      cksum = FUNC12 (ack, (unsigned char *) NULL, 0);

      ack[HDR_LENGTH + TRLR_INDX_CSUM1] = FUNC8 (cksum);
      ack[HDR_LENGTH + TRLR_INDX_CSUM2] = FUNC9 (cksum);
      ack[HDR_LENGTH + TRLR_INDX_CSUM3] = FUNC10 (cksum);

      if (remote_debug > 0)
	{
	  ack[HDR_LENGTH + TRLR_LENGTH] = '\0';
	  /* Don't use _filtered; we can't deal with a QUIT out of
	     target_wait, and I think this might be called from there.  */
	  FUNC17 ("Writing ack %d \"%s\"\n", mips_receive_seq,
			     ack + 1);
	}

      if (FUNC19 (mips_desc, ack, HDR_LENGTH + TRLR_LENGTH) != 0)
	{
	  if (throw_error)
	    FUNC13 ("write to target failed: %s", FUNC18 (errno));
	  else
	    return -1;
	}
    }

  if (remote_debug > 0)
    {
      buff[len] = '\0';
      /* Don't use _filtered; we can't deal with a QUIT out of
         target_wait, and I think this might be called from there.  */
      FUNC17 ("Got packet \"%s\"\n", buff);
    }

  /* We got the packet.  Send an acknowledgement.  */
  mips_receive_seq = (mips_receive_seq + 1) % SEQ_MODULOS;

  ack[HDR_INDX_SYN] = FUNC5 (0, 0, mips_receive_seq);
  ack[HDR_INDX_TYPE_LEN] = FUNC6 (0, 0, mips_receive_seq);
  ack[HDR_INDX_LEN1] = FUNC3 (0, 0, mips_receive_seq);
  ack[HDR_INDX_SEQ] = FUNC4 (0, 0, mips_receive_seq);

  cksum = FUNC12 (ack, (unsigned char *) NULL, 0);

  ack[HDR_LENGTH + TRLR_INDX_CSUM1] = FUNC8 (cksum);
  ack[HDR_LENGTH + TRLR_INDX_CSUM2] = FUNC9 (cksum);
  ack[HDR_LENGTH + TRLR_INDX_CSUM3] = FUNC10 (cksum);

  if (remote_debug > 0)
    {
      ack[HDR_LENGTH + TRLR_LENGTH] = '\0';
      /* Don't use _filtered; we can't deal with a QUIT out of
         target_wait, and I think this might be called from there.  */
      FUNC17 ("Writing ack %d \"%s\"\n", mips_receive_seq,
			 ack + 1);
    }

  if (FUNC19 (mips_desc, ack, HDR_LENGTH + TRLR_LENGTH) != 0)
    {
      if (throw_error)
	FUNC13 ("write to target failed: %s", FUNC18 (errno));
      else
	return -1;
    }

  return len;
}