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
struct __suio {size_t uio_resid; int uio_iovcnt; struct __siov* uio_iov; } ;
struct __siov {char* iov_base; size_t iov_len; } ;

/* Variables and functions */
 char EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct __suio*) ; 
 int /*<<< orphan*/  stdout ; 
 size_t FUNC4 (char const*) ; 

int
FUNC5(char const *s)
{
	int retval;
	size_t c;
	struct __suio uio;
	struct __siov iov[2];

	iov[0].iov_base = (void *)s;
	iov[0].iov_len = c = FUNC4(s);
	iov[1].iov_base = "\n";
	iov[1].iov_len = 1;
	uio.uio_resid = c + 1;
	uio.uio_iov = &iov[0];
	uio.uio_iovcnt = 2;
	FUNC0(stdout);
	FUNC2(stdout, -1);
	retval = FUNC3(stdout, &uio) ? EOF : '\n';
	FUNC1();
	return (retval);
}