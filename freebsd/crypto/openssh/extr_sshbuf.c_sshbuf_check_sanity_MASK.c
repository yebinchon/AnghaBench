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
struct sshbuf {int refcount; scalar_t__ max_size; scalar_t__ alloc; scalar_t__ size; scalar_t__ off; int /*<<< orphan*/ * cd; int /*<<< orphan*/ * d; int /*<<< orphan*/  readonly; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SSHBUF_REFS_MAX ; 
 scalar_t__ SSHBUF_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC5(const struct sshbuf *buf)
{
	FUNC1("sanity");
	if (FUNC2(buf == NULL ||
	    (!buf->readonly && buf->d != buf->cd) ||
	    buf->refcount < 1 || buf->refcount > SSHBUF_REFS_MAX ||
	    buf->cd == NULL ||
	    buf->max_size > SSHBUF_SIZE_MAX ||
	    buf->alloc > buf->max_size ||
	    buf->size > buf->alloc ||
	    buf->off > buf->size)) {
		/* Do not try to recover from corrupted buffer internals */
		FUNC0(("SSH_ERR_INTERNAL_ERROR"));
		FUNC4(SIGSEGV, SIG_DFL);
		FUNC3(SIGSEGV);
		return SSH_ERR_INTERNAL_ERROR;
	}
	return 0;
}