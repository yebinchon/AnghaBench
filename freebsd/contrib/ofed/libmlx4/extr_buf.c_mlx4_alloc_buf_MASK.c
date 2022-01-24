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
struct mlx4_buf {scalar_t__ buf; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int MAP_ANONYMOUS ; 
 scalar_t__ MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (size_t,int) ; 
 int errno ; 
 int FUNC1 (scalar_t__,size_t) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC4(struct mlx4_buf *buf, size_t size, int page_size)
{
	int ret;

	buf->length = FUNC0(size, page_size);
	buf->buf = FUNC2(NULL, buf->length, PROT_READ | PROT_WRITE,
			MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
	if (buf->buf == MAP_FAILED)
		return errno;

	ret = FUNC1(buf->buf, size);
	if (ret)
		FUNC3(buf->buf, buf->length);

	return ret;
}