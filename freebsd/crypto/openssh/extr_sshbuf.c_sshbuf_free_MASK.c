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
struct sshbuf {scalar_t__ refcount; int alloc; struct sshbuf* d; int /*<<< orphan*/  readonly; struct sshbuf* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sshbuf*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sshbuf*) ; 
 scalar_t__ FUNC2 (struct sshbuf*) ; 

void
FUNC3(struct sshbuf *buf)
{
	if (buf == NULL)
		return;
	/*
	 * The following will leak on insane buffers, but this is the safest
	 * course of action - an invalid pointer or already-freed pointer may
	 * have been passed to us and continuing to scribble over memory would
	 * be bad.
	 */
	if (FUNC2(buf) != 0)
		return;
	/*
	 * If we are a child, the free our parent to decrement its reference
	 * count and possibly free it.
	 */
	FUNC3(buf->parent);
	buf->parent = NULL;
	/*
	 * If we are a parent with still-extant children, then don't free just
	 * yet. The last child's call to sshbuf_free should decrement our
	 * refcount to 0 and trigger the actual free.
	 */
	buf->refcount--;
	if (buf->refcount > 0)
		return;
	if (!buf->readonly) {
		FUNC0(buf->d, buf->alloc);
		FUNC1(buf->d);
	}
	FUNC0(buf, sizeof(*buf));
	FUNC1(buf);
}