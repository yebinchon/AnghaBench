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
struct thread {int dummy; } ;
struct freebsd32_pread_args {int /*<<< orphan*/  offset; int /*<<< orphan*/  nbyte; int /*<<< orphan*/  buf; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  off_t ; 

int
FUNC2(struct thread *td, struct freebsd32_pread_args *uap)
{

	return (FUNC1(td, uap->fd, uap->buf, uap->nbyte,
	    FUNC0(off_t, uap->offset)));
}