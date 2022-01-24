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
struct evmap_io {scalar_t__ nclose; scalar_t__ nwrite; scalar_t__ nread; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1(struct evmap_io *entry)
{
	FUNC0(&entry->events);
	entry->nread = 0;
	entry->nwrite = 0;
	entry->nclose = 0;
}