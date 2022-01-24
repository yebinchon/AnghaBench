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
struct res_sym {scalar_t__ name; int number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 char* sym_ntos_unname ; 

const char *
FUNC1(const struct res_sym *syms, int number, int *success) {
	char *unname = sym_ntos_unname;

	for ((void)NULL; syms->name != 0; syms++) {
		if (number == syms->number) {
			if (success)
				*success = 1;
			return (syms->name);
		}
	}

	FUNC0(unname, "%d", number);		/*%< XXX nonreentrant */
	if (success)
		*success = 0;
	return (unname);
}