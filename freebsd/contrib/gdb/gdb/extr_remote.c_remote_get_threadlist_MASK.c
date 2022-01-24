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

/* Variables and functions */
 int BUF_THREAD_ID_SIZE ; 
 char* FUNC0 (int) ; 
 struct remote_state* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8 (int startflag, threadref *nextthread, int result_limit,
		       int *done, int *result_count, threadref *threadlist)
{
  struct remote_state *rs = FUNC1 ();
  static threadref echo_nextthread;
  char *threadlist_packet = FUNC0 (rs->remote_packet_size);
  char *t_response = FUNC0 (rs->remote_packet_size);
  int result = 1;

  /* Trancate result limit to be smaller than the packet size */
  if ((((result_limit + 1) * BUF_THREAD_ID_SIZE) + 10) >= (rs->remote_packet_size))
    result_limit = ((rs->remote_packet_size) / BUF_THREAD_ID_SIZE) - 2;

  FUNC3 (threadlist_packet,
			   startflag, result_limit, nextthread);
  FUNC5 (threadlist_packet);
  FUNC2 (t_response, (rs->remote_packet_size), 0);

  *result_count =
    FUNC4 (t_response + 2, result_limit, &echo_nextthread,
			       threadlist, done);

  if (!FUNC6 (&echo_nextthread, nextthread))
    {
      /* FIXME: This is a good reason to drop the packet */
      /* Possably, there is a duplicate response */
      /* Possabilities :
         retransmit immediatly - race conditions
         retransmit after timeout - yes
         exit
         wait for packet, then exit
       */
      FUNC7 ("HMM: threadlist did not echo arg thread, dropping it\n");
      return 0;			/* I choose simply exiting */
    }
  if (*result_count <= 0)
    {
      if (*done != 1)
	{
	  FUNC7 ("RMT ERROR : failed to get remote thread list\n");
	  result = 0;
	}
      return result;		/* break; */
    }
  if (*result_count > result_limit)
    {
      *result_count = 0;
      FUNC7 ("RMT ERROR: threadlist response longer than requested\n");
      return 0;
    }
  return result;
}