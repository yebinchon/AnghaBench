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
struct hookproc {scalar_t__ hp_magic; scalar_t__ hp_pid; } ;

/* Variables and functions */
 scalar_t__ HOOKPROC_MAGIC_ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct hookproc*) ; 

__attribute__((used)) static void
FUNC2(struct hookproc *hp)
{

	FUNC0(hp->hp_magic == HOOKPROC_MAGIC_ALLOCATED);
	FUNC0(hp->hp_pid > 0);

	hp->hp_magic = 0;
	FUNC1(hp);
}