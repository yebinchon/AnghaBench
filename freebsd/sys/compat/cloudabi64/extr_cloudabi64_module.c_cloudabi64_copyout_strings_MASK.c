#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct image_params {TYPE_1__* sysent; struct image_args* args; } ;
struct image_args {size_t begin_argv; } ;
typedef  int /*<<< orphan*/  register_t ;
struct TYPE_2__ {scalar_t__ sv_usrstack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,void*,size_t) ; 
 size_t FUNC1 (struct image_args*) ; 
 uintptr_t FUNC2 (scalar_t__,int) ; 

register_t *
FUNC3(struct image_params *imgp)
{
	struct image_args *args;
	uintptr_t begin;
	size_t len;

	/* Copy out program arguments. */
	args = imgp->args;
	len = FUNC1(args) - args->begin_argv;
	begin = FUNC2(imgp->sysent->sv_usrstack - len, sizeof(register_t));
	FUNC0(args->begin_argv, (void *)begin, len);
	return ((register_t *)begin);
}