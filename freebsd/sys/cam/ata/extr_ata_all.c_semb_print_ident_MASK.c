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
struct sep_identify_data {int /*<<< orphan*/  interface_rev; int /*<<< orphan*/  interface_id; } ;
typedef  int /*<<< orphan*/  ins ;
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sep_identify_data*) ; 

void
FUNC3(struct sep_identify_data *ident_data)
{
	char in[7], ins[5];

	FUNC2(ident_data);
	FUNC0(in, ident_data->interface_id, 6, sizeof(in));
	FUNC0(ins, ident_data->interface_rev, 4, sizeof(ins));
	FUNC1(" SEMB %s %s device\n", in, ins);
}