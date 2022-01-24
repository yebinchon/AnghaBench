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
 struct remote_state* FUNC0 () ; 
 char* FUNC1 (char*,int*) ; 
 char* FUNC2 (char*,int*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4 (char *pkt, int result_limit,
			   threadref *original_echo, threadref *resultlist,
			   int *doneflag)
{
  struct remote_state *rs = FUNC0 ();
  char *limit;
  int count, resultcount, done;

  resultcount = 0;
  /* Assume the 'q' and 'M chars have been stripped.  */
  limit = pkt + ((rs->remote_packet_size) - BUF_THREAD_ID_SIZE);		/* done parse past here */
  pkt = FUNC1 (pkt, &count);	/* count field */
  pkt = FUNC2 (pkt, &done);
  /* The first threadid is the argument threadid.  */
  pkt = FUNC3 (pkt, original_echo);	/* should match query packet */
  while ((count-- > 0) && (pkt < limit))
    {
      pkt = FUNC3 (pkt, resultlist++);
      if (resultcount++ >= result_limit)
	break;
    }
  if (doneflag)
    *doneflag = done;
  return resultcount;
}