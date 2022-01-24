#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int cmd; } ;
typedef  TYPE_1__ CMD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC4(char *line)
{
    CMD		command;
    int		status = 1;

	while (1) {
	FUNC0(line, &command);
		switch (command.cmd) {
	case 0:
	    /*
	     * Comment or blank line
	     */
	    break;
	case 'g':
	    /*
	     * Set geometry
	     */
	    status = FUNC2(&command);
	    break;
	case 'p':
	    status = FUNC3(&command);
	    break;
	case 'a':
	    status = FUNC1(&command);
	    break;
	default:
	    status = 0;
	    break;
	}
	break;
    }
    return (status);
}