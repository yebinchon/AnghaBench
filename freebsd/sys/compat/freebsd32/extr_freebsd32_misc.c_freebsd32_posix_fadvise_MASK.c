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
struct freebsd32_posix_fadvise_args {int /*<<< orphan*/  advice; int /*<<< orphan*/  len; int /*<<< orphan*/  offset; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct thread*,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  off_t ; 

int
FUNC3(struct thread *td,
    struct freebsd32_posix_fadvise_args *uap)
{
	int error;

	error = FUNC2(td, uap->fd, FUNC0(off_t, uap->offset),
	    FUNC0(off_t, uap->len), uap->advice);
	return (FUNC1(td, error));
}