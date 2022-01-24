#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef  TYPE_1__ RMPCONN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * LastFree ; 
 TYPE_1__* RmpConns ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void
FUNC2(void)
{
	RMPCONN *rtmp;

	while (RmpConns != NULL) {
		rtmp = RmpConns;
		RmpConns = RmpConns->next;
		FUNC0(rtmp);
	}

	if (LastFree != NULL) {
		FUNC1((char *)LastFree);
		LastFree = NULL;
	}
}