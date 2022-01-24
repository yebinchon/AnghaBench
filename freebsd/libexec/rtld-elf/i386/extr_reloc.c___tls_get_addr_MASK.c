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
struct TYPE_3__ {int /*<<< orphan*/  ti_offset; int /*<<< orphan*/  ti_module; } ;
typedef  TYPE_1__ tls_index ;
typedef  int /*<<< orphan*/  Elf_Addr ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *FUNC1(tls_index *ti)
{
    Elf_Addr** segbase;

    __asm __volatile("movl %%gs:0, %0" : "=r" (segbase));

    return FUNC0(&segbase[1], ti->ti_module, ti->ti_offset);
}