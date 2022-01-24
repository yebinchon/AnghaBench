#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  value; } ;
struct assignment {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char const*,...) ; 

__attribute__((used)) static void FUNC1(const char *name, struct assignment *defval)
{
    if(defval != NULL)
	FUNC0(1, "opt.%s = (char *)(unsigned long)\"%s\";\n", name, defval->u.value);
    else
	FUNC0(1, "opt.%s = NULL;\n", name);
}