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
typedef  int /*<<< orphan*/  register_t ;

/* Variables and functions */
 int EDOOFUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int (*) (struct thread*,int /*<<< orphan*/ ),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  machdep ; 
 int /*<<< orphan*/  todo ; 

int
FUNC1(struct thread *td, register_t stack)
{

	FUNC0(machdep, linux_set_upcall_kse, todo);
	return (EDOOFUS);
}