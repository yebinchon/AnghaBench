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
struct dl_list {int dummy; } ;
struct cli_txt_entry {int /*<<< orphan*/  list; int /*<<< orphan*/ * txt; } ;

/* Variables and functions */
 struct cli_txt_entry* FUNC0 (struct dl_list*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dl_list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cli_txt_entry*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 
 struct cli_txt_entry* FUNC4 (int) ; 

int FUNC5(struct dl_list *txt_list, const char *txt)
{
	struct cli_txt_entry *e;

	e = FUNC0(txt_list, txt);
	if (e)
		return 0;
	e = FUNC4(sizeof(*e));
	if (e == NULL)
		return -1;
	e->txt = FUNC3(txt);
	if (e->txt == NULL) {
		FUNC2(e);
		return -1;
	}
	FUNC1(txt_list, &e->list);
	return 0;
}