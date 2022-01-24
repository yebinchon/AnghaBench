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
typedef  scalar_t__ u_int ;
struct unicx {int dummy; } ;
struct uni_print_tbl {scalar_t__ name; scalar_t__ val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,struct unicx*) ; 
 int /*<<< orphan*/  FUNC1 (struct unicx*,char*,scalar_t__) ; 

void
FUNC2(const char *entry, u_int val, const struct uni_print_tbl *tbl,
    struct unicx *cx)
{
	if (entry)
		FUNC0(entry, cx);
	while (tbl->name) {
		if (tbl->val == val) {
			FUNC1(cx, "%s", tbl->name);
			return;
		}
		tbl++;
	}
	FUNC1(cx, "ERROR(0x%x)", val);
}