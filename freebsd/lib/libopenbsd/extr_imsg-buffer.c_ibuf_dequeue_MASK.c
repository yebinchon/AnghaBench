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
struct msgbuf {int /*<<< orphan*/  queued; int /*<<< orphan*/  bufs; } ;
struct ibuf {int fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ibuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC2 (struct ibuf*) ; 

void
FUNC3(struct msgbuf *msgbuf, struct ibuf *buf)
{
	FUNC0(&msgbuf->bufs, buf, entry);

	if (buf->fd != -1)
		FUNC1(buf->fd);

	msgbuf->queued--;
	FUNC2(buf);
}