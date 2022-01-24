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
typedef  int /*<<< orphan*/  osm_opensm_t ;
struct TYPE_2__ {int on; int /*<<< orphan*/  (* loop_function ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  previous; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__ loop_command ; 
 char* FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(char **p_last, osm_opensm_t * p_osm, FILE * out)
{
	char *p_cmd;

	p_cmd = FUNC3(p_last);
	if (p_cmd) {
		if (FUNC5(p_cmd, "loop") == 0) {
			FUNC1(out, "Looping on status command...\n");
			FUNC0(out);
			loop_command.on = 1;
			loop_command.previous = FUNC6(NULL);
			loop_command.loop_function = print_status;
		} else {
			FUNC2(out, 1);
			return;
		}
	}
	FUNC4(p_osm, out);
}