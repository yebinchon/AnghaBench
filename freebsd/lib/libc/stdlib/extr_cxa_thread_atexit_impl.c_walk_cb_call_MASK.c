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
struct dl_phdr_info {int dummy; } ;
struct cxa_thread_dtor {int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  obj; int /*<<< orphan*/  dso; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dl_phdr_info*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct dl_phdr_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct cxa_thread_dtor *dtor)
{
	struct dl_phdr_info phdr_info;

	if (FUNC1(dtor->dso, &phdr_info) &&
	    FUNC0(&phdr_info, dtor->func))
		dtor->func(dtor->obj);
	else
		FUNC2(stderr, "__cxa_thread_call_dtors: dtr %p from "
		    "unloaded dso, skipping\n", (void *)(dtor->func));
}