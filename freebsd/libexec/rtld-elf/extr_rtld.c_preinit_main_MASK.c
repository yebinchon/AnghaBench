#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int preinit_array_num; int /*<<< orphan*/  path; scalar_t__ preinit_array; } ;
typedef  int Elf_Addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UTRACE_INIT_CALL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,void*) ; 
 TYPE_1__* obj_main ; 

__attribute__((used)) static void
FUNC3(void)
{
    Elf_Addr *preinit_addr;
    int index;

    preinit_addr = (Elf_Addr *)obj_main->preinit_array;
    if (preinit_addr == NULL)
	return;

    for (index = 0; index < obj_main->preinit_array_num; index++) {
	if (preinit_addr[index] != 0 && preinit_addr[index] != 1) {
	    FUNC2("calling preinit function for %s at %p", obj_main->path,
	      (void *)preinit_addr[index]);
	    FUNC0(UTRACE_INIT_CALL, obj_main, (void *)preinit_addr[index],
	      0, 0, obj_main->path);
	    FUNC1(obj_main, preinit_addr[index]);
	}
    }
}