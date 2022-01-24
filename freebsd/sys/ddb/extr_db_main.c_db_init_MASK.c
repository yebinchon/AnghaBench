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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ kstrtab ; 
 scalar_t__ ksymtab ; 
 scalar_t__ ksymtab_size ; 

__attribute__((used)) static int
FUNC2(void)
{

	FUNC1();

	if (ksymtab != 0 && kstrtab != 0 && ksymtab_size != 0) {
		FUNC0((char *)ksymtab,
		    (char *)(ksymtab + ksymtab_size), "elf", (char *)kstrtab);
	}
	FUNC0(NULL, NULL, "kld", NULL);
	return (1);	/* We're the default debugger. */
}