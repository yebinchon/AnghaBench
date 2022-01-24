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
typedef  int /*<<< orphan*/  u_char ;
struct sshbuf {size_t max_size; int refcount; size_t size; size_t alloc; int /*<<< orphan*/ * d; int /*<<< orphan*/ * cd; scalar_t__ readonly; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  SSHBUF_SIZE_INC ; 
 size_t SSHBUF_SIZE_INIT ; 
 size_t SSHBUF_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_BUFFER_READ_ONLY ; 
 int SSH_ERR_NO_BUFFER_SPACE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,size_t,size_t,int) ; 
 int FUNC4 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct sshbuf*,int) ; 

int
FUNC6(struct sshbuf *buf, size_t max_size)
{
	size_t rlen;
	u_char *dp;
	int r;

	FUNC1(("set max buf = %p len = %zu", buf, max_size));
	if ((r = FUNC4(buf)) != 0)
		return r;
	if (max_size == buf->max_size)
		return 0;
	if (buf->readonly || buf->refcount > 1)
		return SSH_ERR_BUFFER_READ_ONLY;
	if (max_size > SSHBUF_SIZE_MAX)
		return SSH_ERR_NO_BUFFER_SPACE;
	/* pack and realloc if necessary */
	FUNC5(buf, max_size < buf->size);
	if (max_size < buf->alloc && max_size > buf->size) {
		if (buf->size < SSHBUF_SIZE_INIT)
			rlen = SSHBUF_SIZE_INIT;
		else
			rlen = FUNC0(buf->size, SSHBUF_SIZE_INC);
		if (rlen > max_size)
			rlen = max_size;
		FUNC1(("new alloc = %zu", rlen));
		if ((dp = FUNC3(buf->d, buf->alloc, rlen, 1)) == NULL)
			return SSH_ERR_ALLOC_FAIL;
		buf->cd = buf->d = dp;
		buf->alloc = rlen;
	}
	FUNC2("new-max");
	if (max_size < buf->alloc)
		return SSH_ERR_NO_BUFFER_SPACE;
	buf->max_size = max_size;
	return 0;
}