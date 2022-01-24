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
typedef  int /*<<< orphan*/  w ;
struct __suio {int uio_resid; int uio_iovcnt; struct __siov* uio_iov; } ;
struct __siov {int* iov_base; int iov_len; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,struct __suio*) ; 

int
FUNC3(int w, FILE *fp)
{
	int retval;
	struct __suio uio;
	struct __siov iov;

	iov.iov_base = &w;
	uio.uio_resid = iov.iov_len = sizeof(w);
	uio.uio_iov = &iov;
	uio.uio_iovcnt = 1;
	FUNC0(fp);
	retval = FUNC2(fp, &uio);
	FUNC1();
	return (retval);
}