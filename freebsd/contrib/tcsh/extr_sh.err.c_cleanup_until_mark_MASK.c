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
struct cleanup_entry {int /*<<< orphan*/  var; int /*<<< orphan*/  (* fn ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 size_t cleanup_mark ; 
 size_t cleanup_sp ; 
 struct cleanup_entry* cleanup_stack ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1(void)
{
    while (cleanup_sp > cleanup_mark) {
	struct cleanup_entry ce;

	cleanup_sp--;
	ce = cleanup_stack[cleanup_sp];
	ce.fn(ce.var);
    }
}