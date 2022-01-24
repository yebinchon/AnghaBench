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
struct ibuf {scalar_t__ off; scalar_t__ buf; scalar_t__ buflen; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,size_t) ; 

__attribute__((used)) static int
FUNC2(void *vp, char *buf, int len)
{
	struct ibuf *ib = vp;
	size_t todo = FUNC0((size_t)len, ib->buflen - ib->off);

	FUNC1(buf, ib->buf + ib->off, todo);
	ib->off += todo;
	return todo;
}