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
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 size_t INTERPOS_select ; 
 scalar_t__* __libc_interposing ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

int
FUNC1(int n, fd_set *rs, fd_set *ws, fd_set *es, struct timeval *t)
{

	return (((int (*)(int, fd_set *, fd_set *, fd_set *, struct timeval *))
	    __libc_interposing[INTERPOS_select])(n, rs, ws, es, t));
}