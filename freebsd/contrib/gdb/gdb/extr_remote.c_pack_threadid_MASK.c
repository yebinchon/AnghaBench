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

/* Variables and functions */
 int BUF_THREAD_ID_SIZE ; 
 char* FUNC0 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC1 (char *pkt, threadref *id)
{
  char *limit;
  unsigned char *altid;

  altid = (unsigned char *) id;
  limit = pkt + BUF_THREAD_ID_SIZE;
  while (pkt < limit)
    pkt = FUNC0 (pkt, *altid++);
  return pkt;
}