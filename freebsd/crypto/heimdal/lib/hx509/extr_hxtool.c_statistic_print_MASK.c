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
struct statistic_print_options {int type_integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stat_file_string ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC2(struct statistic_print_options*opt, int argc, char **argv)
{
    int type = 0;

    if (stat_file_string == NULL)
	FUNC0(1, "no stat file");

    if (opt->type_integer)
	type = opt->type_integer;

    FUNC1(context, type, stdout);
    return 0;
}