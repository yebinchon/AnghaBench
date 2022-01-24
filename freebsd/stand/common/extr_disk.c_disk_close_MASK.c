#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct open_disk {int /*<<< orphan*/  table; } ;
struct TYPE_2__ {scalar_t__ d_opendata; } ;
struct disk_devdesc {TYPE_1__ dd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,struct open_disk*) ; 
 int /*<<< orphan*/  FUNC1 (struct disk_devdesc*) ; 
 int /*<<< orphan*/  FUNC2 (struct open_disk*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(struct disk_devdesc *dev)
{
	struct open_disk *od;

	od = (struct open_disk *)dev->dd.d_opendata;
	FUNC0("%s closed => %p", FUNC1(dev), od);
	FUNC3(od->table);
	FUNC2(od);
	return (0);
}