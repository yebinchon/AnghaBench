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
 char* FUNC0 (char*,int) ; 
 char* FUNC1 (char*,int) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *
FUNC3 (char *pkt, int startflag, int threadcount,
			 threadref *nextthread)
{
  *pkt++ = 'q';			/* info query packet */
  *pkt++ = 'L';			/* Process LIST or threadLIST request */
  pkt = FUNC1 (pkt, startflag);	/* initflag 1 bytes */
  pkt = FUNC0 (pkt, threadcount);	/* threadcount 2 bytes */
  pkt = FUNC2 (pkt, nextthread);	/* 64 bit thread identifier */
  *pkt = '\0';
  return pkt;
}