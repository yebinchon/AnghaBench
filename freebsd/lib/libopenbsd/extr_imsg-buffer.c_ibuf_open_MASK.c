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
struct ibuf {size_t size; size_t max; int fd; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 struct ibuf* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ibuf*) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 

struct ibuf *
FUNC3(size_t len)
{
	struct ibuf	*buf;

	if ((buf = FUNC0(1, sizeof(struct ibuf))) == NULL)
		return (NULL);
	if ((buf->buf = FUNC2(len)) == NULL) {
		FUNC1(buf);
		return (NULL);
	}
	buf->size = buf->max = len;
	buf->fd = -1;

	return (buf);
}