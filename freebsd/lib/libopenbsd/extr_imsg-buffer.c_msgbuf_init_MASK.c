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
struct msgbuf {int fd; int /*<<< orphan*/  bufs; scalar_t__ queued; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void
FUNC1(struct msgbuf *msgbuf)
{
	msgbuf->queued = 0;
	msgbuf->fd = -1;
	FUNC0(&msgbuf->bufs);
}