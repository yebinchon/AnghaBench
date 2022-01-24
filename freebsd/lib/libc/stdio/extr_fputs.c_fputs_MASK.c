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
struct __suio {scalar_t__ uio_resid; int uio_iovcnt; struct __siov* uio_iov; } ;
struct __siov {scalar_t__ iov_len; void* iov_base; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct __suio*) ; 
 scalar_t__ FUNC4 (char const*) ; 

int
FUNC5(const char * __restrict s, FILE * __restrict fp)
{
	int retval;
	struct __suio uio;
	struct __siov iov;

	iov.iov_base = (void *)s;
	uio.uio_resid = iov.iov_len = FUNC4(s);
	uio.uio_iov = &iov;
	uio.uio_iovcnt = 1;
	FUNC0(fp);
	FUNC2(fp, -1);
	retval = FUNC3(fp, &uio);
	FUNC1();
	if (retval == 0)
		return (iov.iov_len > INT_MAX ? INT_MAX : iov.iov_len);
	return (retval);
}