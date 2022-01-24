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
struct cli_txt_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cli_txt_entry*) ; 
 struct cli_txt_entry* FUNC1 (struct dl_list*,char const*) ; 

void FUNC2(struct dl_list *txt_list, const char *txt)
{
	struct cli_txt_entry *e;

	e = FUNC1(txt_list, txt);
	if (e)
		FUNC0(e);
}