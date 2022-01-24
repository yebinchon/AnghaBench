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
typedef  int /*<<< orphan*/  RtldLockState ;
typedef  int /*<<< orphan*/  Obj_Entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (void const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtld_bind_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,struct dl_phdr_info*) ; 

int
FUNC5(const void *addr, struct dl_phdr_info *phdr_info)
{
    const Obj_Entry *obj;
    RtldLockState lockstate;

    FUNC3(rtld_bind_lock, &lockstate);
    obj = FUNC2(addr);
    if (obj == NULL) {
        FUNC0("No shared object contains address");
	FUNC1(rtld_bind_lock, &lockstate);
        return (0);
    }
    FUNC4(obj, phdr_info);
    FUNC1(rtld_bind_lock, &lockstate);
    return (1);
}