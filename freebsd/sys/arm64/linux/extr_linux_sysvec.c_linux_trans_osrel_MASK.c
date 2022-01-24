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
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_3__ {int /*<<< orphan*/  n_namesz; } ;
typedef  TYPE_1__ Elf_Note ;
typedef  scalar_t__ Elf32_Word ;
typedef  int /*<<< orphan*/  Elf32_Addr ;

/* Variables and functions */
 scalar_t__ const GNU_ABI_LINUX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__ const,scalar_t__ const,scalar_t__ const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC2(const Elf_Note *note, int32_t *osrel)
{
	const Elf32_Word *desc;
	uintptr_t p;

	p = (uintptr_t)(note + 1);
	p += FUNC1(note->n_namesz, sizeof(Elf32_Addr));

	desc = (const Elf32_Word *)p;
	if (desc[0] != GNU_ABI_LINUX)
		return (false);

	*osrel = FUNC0(desc[1], desc[2], desc[3]);
	return (true);
}