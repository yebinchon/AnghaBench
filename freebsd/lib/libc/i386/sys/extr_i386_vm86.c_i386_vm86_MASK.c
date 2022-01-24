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
struct i386_vm86_args {int sub_op; char* sub_args; } ;

/* Variables and functions */
 int /*<<< orphan*/  I386_VM86 ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i386_vm86_args*) ; 

int
FUNC1(int fcn, void *data)
{
	struct i386_vm86_args p;

	p.sub_op = fcn;
	p.sub_args = (char *)data;

	return (FUNC0(I386_VM86, &p));
}