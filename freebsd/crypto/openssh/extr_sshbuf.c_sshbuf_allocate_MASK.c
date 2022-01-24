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
struct sshbuf {size_t size; size_t max_size; size_t alloc; int /*<<< orphan*/ * d; int /*<<< orphan*/ * cd; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  SSHBUF_SIZE_INC ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int SSH_ERR_ALLOC_FAIL ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,size_t,size_t,int) ; 
 int FUNC4 (struct sshbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sshbuf*,int) ; 

int
FUNC6(struct sshbuf *buf, size_t len)
{
	size_t rlen, need;
	u_char *dp;
	int r;

	FUNC1(("allocate buf = %p len = %zu", buf, len));
	if ((r = FUNC4(buf, len)) != 0)
		return r;
	/*
	 * If the requested allocation appended would push us past max_size
	 * then pack the buffer, zeroing buf->off.
	 */
	FUNC5(buf, buf->size + len > buf->max_size);
	FUNC2("allocate");
	if (len + buf->size <= buf->alloc)
		return 0; /* already have it. */

	/*
	 * Prefer to alloc in SSHBUF_SIZE_INC units, but
	 * allocate less if doing so would overflow max_size.
	 */
	need = len + buf->size - buf->alloc;
	rlen = FUNC0(buf->alloc + need, SSHBUF_SIZE_INC);
	FUNC1(("need %zu initial rlen %zu", need, rlen));
	if (rlen > buf->max_size)
		rlen = buf->alloc + need;
	FUNC1(("adjusted rlen %zu", rlen));
	if ((dp = FUNC3(buf->d, buf->alloc, rlen, 1)) == NULL) {
		FUNC1(("realloc fail"));
		return SSH_ERR_ALLOC_FAIL;
	}
	buf->alloc = rlen;
	buf->cd = buf->d = dp;
	if ((r = FUNC4(buf, len)) < 0) {
		/* shouldn't fail */
		return r;
	}
	FUNC2("done");
	return 0;
}