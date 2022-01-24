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
struct sshbuf {int off; int refcount; int size; scalar_t__ d; scalar_t__ readonly; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SSHBUF_PACK_MIN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC3(struct sshbuf *buf, int force)
{
	FUNC0(("force %d", force));
	FUNC1("pre-pack");
	if (buf->off == 0 || buf->readonly || buf->refcount > 1)
		return;
	if (force ||
	    (buf->off >= SSHBUF_PACK_MIN && buf->off >= buf->size / 2)) {
		FUNC2(buf->d, buf->d + buf->off, buf->size - buf->off);
		buf->size -= buf->off;
		buf->off = 0;
		FUNC1("packed");
	}
}