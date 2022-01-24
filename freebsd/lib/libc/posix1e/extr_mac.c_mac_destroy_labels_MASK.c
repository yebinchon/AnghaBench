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
struct label_default {struct label_default* ld_labels; struct label_default* ld_name; } ;

/* Variables and functions */
 struct label_default* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct label_default*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct label_default*) ; 
 int /*<<< orphan*/  label_default_head ; 
 int /*<<< orphan*/  ld_entries ; 

__attribute__((used)) static void
FUNC3(void)
{
	struct label_default *ld;

	while ((ld = FUNC0(&label_default_head))) {
		FUNC2(ld->ld_name);
		FUNC2(ld->ld_labels);
		FUNC1(ld, ld_entries);
		FUNC2(ld);
	}
}