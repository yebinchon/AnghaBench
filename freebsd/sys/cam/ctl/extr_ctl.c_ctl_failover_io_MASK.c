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
union ctl_io {int /*<<< orphan*/  scsiio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(union ctl_io *io, int have_lock)
{
	FUNC1(&io->scsiio);
	FUNC0(io);
}