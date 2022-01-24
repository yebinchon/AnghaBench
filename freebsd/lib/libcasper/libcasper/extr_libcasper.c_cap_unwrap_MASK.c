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
struct TYPE_4__ {scalar_t__ cch_magic; int cch_sock; int cch_pd; int cch_flags; } ;
typedef  TYPE_1__ cap_channel_t ;

/* Variables and functions */
 scalar_t__ CAP_CHANNEL_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int
FUNC3(cap_channel_t *chan, int *flags)
{
	int sock;

	FUNC0(chan != NULL);
	FUNC0(chan->cch_magic == CAP_CHANNEL_MAGIC);

	sock = chan->cch_sock;
	if (chan->cch_pd != -1)
		FUNC1(chan->cch_pd);
	if (flags != NULL)
		*flags = chan->cch_flags;
	chan->cch_magic = 0;
	FUNC2(chan);

	return (sock);
}