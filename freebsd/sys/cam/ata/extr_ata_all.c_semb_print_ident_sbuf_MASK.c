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
struct sbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sbuf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sbuf*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sep_identify_data*,struct sbuf*) ; 

void
FUNC3(struct sep_identify_data *ident_data, struct sbuf *sb)
{

	FUNC2(ident_data, sb);

	FUNC1(sb, " SEMB ");
	FUNC0(sb, ident_data->interface_id, 6, 0);
	FUNC1(sb, " ");
	FUNC0(sb, ident_data->interface_rev, 4, 0);
	FUNC1(sb, " device\n");
}