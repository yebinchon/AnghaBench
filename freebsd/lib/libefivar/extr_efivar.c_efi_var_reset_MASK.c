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
struct efi_var_ioc {scalar_t__ datasize; int /*<<< orphan*/ * data; scalar_t__ attrib; int /*<<< orphan*/  vendor; scalar_t__ namesize; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct efi_var_ioc *var)
{
	var->name = NULL;
	var->namesize = 0;
	FUNC0(&var->vendor, 0, sizeof(var->vendor));
	var->attrib = 0;
	var->data = NULL;
	var->datasize = 0;
}