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
typedef  union ctl_io {int dummy; } ctl_io ;
struct ctl_be_block_io {union ctl_io* io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union ctl_io*) ; 
 int /*<<< orphan*/  FUNC1 (struct ctl_be_block_io*) ; 

__attribute__((used)) static void
FUNC2(struct ctl_be_block_io *beio)
{
	union ctl_io *io;

	io = beio->io;
	FUNC1(beio);
	FUNC0(io);
}