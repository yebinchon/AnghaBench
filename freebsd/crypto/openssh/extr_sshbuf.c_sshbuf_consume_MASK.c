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
struct sshbuf {scalar_t__ off; scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int SSH_ERR_MESSAGE_INCOMPLETE ; 
 int FUNC2 (struct sshbuf*) ; 
 size_t FUNC3 (struct sshbuf*) ; 

int
FUNC4(struct sshbuf *buf, size_t len)
{
	int r;

	FUNC0(("len = %zu", len));
	if ((r = FUNC2(buf)) != 0)
		return r;
	if (len == 0)
		return 0;
	if (len > FUNC3(buf))
		return SSH_ERR_MESSAGE_INCOMPLETE;
	buf->off += len;
	/* deal with empty buffer */
	if (buf->off == buf->size)
		buf->off = buf->size = 0;
	FUNC1("done");
	return 0;
}