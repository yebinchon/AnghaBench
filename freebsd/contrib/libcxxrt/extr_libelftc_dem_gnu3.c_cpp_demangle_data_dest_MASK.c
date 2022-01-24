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
struct cpp_demangle_data {int /*<<< orphan*/  output; int /*<<< orphan*/  output_tmp; int /*<<< orphan*/  subst; int /*<<< orphan*/  tmpl; int /*<<< orphan*/  class_type; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct cpp_demangle_data *d)
{

	if (d == NULL)
		return;

	FUNC0(&d->cmd);
	FUNC1(&d->class_type);
	FUNC1(&d->tmpl);
	FUNC1(&d->subst);
	FUNC1(&d->output_tmp);
	FUNC1(&d->output);
}