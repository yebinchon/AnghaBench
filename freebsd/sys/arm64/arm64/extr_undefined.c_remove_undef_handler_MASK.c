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
struct undef_handler {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct undef_handler*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_UNDEF ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uh_link ; 

void
FUNC2(void *handle)
{
	struct undef_handler *uh;

	uh = handle;
	FUNC0(uh, uh_link);
	FUNC1(handle, M_UNDEF);
}