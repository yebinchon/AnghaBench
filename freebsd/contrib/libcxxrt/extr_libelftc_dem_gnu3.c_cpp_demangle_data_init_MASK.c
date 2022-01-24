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
struct TYPE_3__ {int /*<<< orphan*/ * container; } ;
struct cpp_demangle_data {int paren; int pfirst; int mem_rst; int mem_vat; int mem_cst; char const* cur; TYPE_1__ output; TYPE_1__ output_tmp; TYPE_1__ subst; TYPE_1__ tmpl; TYPE_1__ class_type; scalar_t__ push_head; int /*<<< orphan*/ * last_sname; scalar_t__ func_type; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(struct cpp_demangle_data *d, const char *cur)
{

	if (d == NULL || cur == NULL)
		return (0);

	if (!FUNC3(&d->output))
		return (0);
	if (!FUNC3(&d->output_tmp))
		goto clean1;
	if (!FUNC3(&d->subst))
		goto clean2;
	if (!FUNC3(&d->tmpl))
		goto clean3;
	if (!FUNC3(&d->class_type))
		goto clean4;
	if (!FUNC1(&d->cmd))
		goto clean5;

	FUNC0(d->output.container != NULL);
	FUNC0(d->output_tmp.container != NULL);
	FUNC0(d->subst.container != NULL);
	FUNC0(d->tmpl.container != NULL);
	FUNC0(d->class_type.container != NULL);

	d->paren = false;
	d->pfirst = false;
	d->mem_rst = false;
	d->mem_vat = false;
	d->mem_cst = false;
	d->func_type = 0;
	d->cur = cur;
	d->last_sname = NULL;
	d->push_head = 0;

	return (1);

clean5:
	FUNC2(&d->class_type);
clean4:
	FUNC2(&d->tmpl);
clean3:
	FUNC2(&d->subst);
clean2:
	FUNC2(&d->output_tmp);
clean1:
	FUNC2(&d->output);

	return (0);
}