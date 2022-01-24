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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,void const*,size_t) ; 

__attribute__((used)) static void
FUNC2(int fd, const void *buf, size_t nbytes)
{
	ssize_t r;

	while (nbytes > 0) {
		r = FUNC1(fd, buf, nbytes);
		FUNC0(r > 0);
		nbytes -= r;
		buf = (const char*)buf + r;
	}
}