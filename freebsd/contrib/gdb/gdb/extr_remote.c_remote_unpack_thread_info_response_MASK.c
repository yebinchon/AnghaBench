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
typedef  int /*<<< orphan*/  threadref ;
struct remote_state {int remote_packet_size; } ;
struct gdb_ext_thread_info {char* display; char* shortname; char* more_display; int /*<<< orphan*/  active; int /*<<< orphan*/  threadid; } ;

/* Variables and functions */
 unsigned int TAG_DISPLAY ; 
 unsigned int TAG_EXISTS ; 
 unsigned int TAG_MOREDISPLAY ; 
 unsigned int TAG_THREADID ; 
 unsigned int TAG_THREADNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct remote_state* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,int*) ; 
 char* FUNC5 (char*,...) ; 
 char* FUNC6 (char*,char*,int) ; 
 char* FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9 (char *pkt, threadref *expectedref,
				    struct gdb_ext_thread_info *info)
{
  struct remote_state *rs = FUNC1 ();
  int mask, length;
  unsigned int tag;
  threadref ref;
  char *limit = pkt + (rs->remote_packet_size);	/* plausable parsing limit */
  int retval = 1;

  /* info->threadid = 0; FIXME: implement zero_threadref */
  info->active = 0;
  info->display[0] = '\0';
  info->shortname[0] = '\0';
  info->more_display[0] = '\0';

  /* Assume the characters indicating the packet type have been stripped */
  pkt = FUNC5 (pkt, &mask);	/* arg mask */
  pkt = FUNC7 (pkt, &ref);

  if (mask == 0)
    FUNC8 ("Incomplete response to threadinfo request\n");
  if (!FUNC3 (&ref, expectedref))
    {				/* This is an answer to a different request */
      FUNC8 ("ERROR RMT Thread info mismatch\n");
      return 0;
    }
  FUNC0 (&info->threadid, &ref);

  /* Loop on tagged fields , try to bail if somthing goes wrong */

  while ((pkt < limit) && mask && *pkt)		/* packets are terminated with nulls */
    {
      pkt = FUNC5 (pkt, &tag);	/* tag */
      pkt = FUNC4 (pkt, &length);		/* length */
      if (!(tag & mask))	/* tags out of synch with mask */
	{
	  FUNC8 ("ERROR RMT: threadinfo tag mismatch\n");
	  retval = 0;
	  break;
	}
      if (tag == TAG_THREADID)
	{
	  if (length != 16)
	    {
	      FUNC8 ("ERROR RMT: length of threadid is not 16\n");
	      retval = 0;
	      break;
	    }
	  pkt = FUNC7 (pkt, &ref);
	  mask = mask & ~TAG_THREADID;
	  continue;
	}
      if (tag == TAG_EXISTS)
	{
	  info->active = FUNC2 (pkt, length);
	  pkt += length;
	  mask = mask & ~(TAG_EXISTS);
	  if (length > 8)
	    {
	      FUNC8 ("ERROR RMT: 'exists' length too long\n");
	      retval = 0;
	      break;
	    }
	  continue;
	}
      if (tag == TAG_THREADNAME)
	{
	  pkt = FUNC6 (pkt, &info->shortname[0], length);
	  mask = mask & ~TAG_THREADNAME;
	  continue;
	}
      if (tag == TAG_DISPLAY)
	{
	  pkt = FUNC6 (pkt, &info->display[0], length);
	  mask = mask & ~TAG_DISPLAY;
	  continue;
	}
      if (tag == TAG_MOREDISPLAY)
	{
	  pkt = FUNC6 (pkt, &info->more_display[0], length);
	  mask = mask & ~TAG_MOREDISPLAY;
	  continue;
	}
      FUNC8 ("ERROR RMT: unknown thread info tag\n");
      break;			/* Not a tag we know about */
    }
  return retval;
}