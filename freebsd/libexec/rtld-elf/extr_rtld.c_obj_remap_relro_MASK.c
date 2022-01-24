#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ relro_size; int /*<<< orphan*/  path; int /*<<< orphan*/  relro_page; } ;
typedef  TYPE_1__ Obj_Entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(Obj_Entry *obj, int prot)
{

	if (obj->relro_size > 0 && FUNC1(obj->relro_page, obj->relro_size,
	    prot) == -1) {
		FUNC0("%s: Cannot set relro protection to %#x: %s",
		    obj->path, prot, FUNC2(errno));
		return (-1);
	}
	return (0);
}