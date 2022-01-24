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
typedef  int /*<<< orphan*/  line ;
struct TYPE_2__ {char* dv_name; } ;

/* Variables and functions */
 TYPE_1__ host_dev ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(int verbose)
{
	char line[80];

	FUNC1("%s devices:", host_dev.dv_name);
	if (FUNC0("\n") != 0)
		return (1);

	FUNC2(line, sizeof(line), "    host%d:   Host filesystem\n", 0);
	return (FUNC0(line));
}