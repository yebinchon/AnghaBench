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
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cleanup_chain ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cleanup*) ; 

void
FUNC1 (struct cleanup *old_chain)
{
  FUNC0 (&cleanup_chain, old_chain);
}