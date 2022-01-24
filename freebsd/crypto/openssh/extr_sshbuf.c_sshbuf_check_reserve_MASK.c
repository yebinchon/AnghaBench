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
struct sshbuf {int refcount; size_t max_size; size_t size; size_t off; scalar_t__ readonly; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SSH_ERR_BUFFER_READ_ONLY ; 
 int SSH_ERR_NO_BUFFER_SPACE ; 
 int FUNC1 (struct sshbuf const*) ; 

int
FUNC2(const struct sshbuf *buf, size_t len)
{
	int r;

	if ((r = FUNC1(buf)) != 0)
		return r;
	if (buf->readonly || buf->refcount > 1)
		return SSH_ERR_BUFFER_READ_ONLY;
	FUNC0("check");
	/* Check that len is reasonable and that max_size + available < len */
	if (len > buf->max_size || buf->max_size - len < buf->size - buf->off)
		return SSH_ERR_NO_BUFFER_SPACE;
	return 0;
}