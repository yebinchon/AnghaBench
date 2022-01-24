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
typedef  int /*<<< orphan*/  line ;

/* Variables and functions */
 int CMD_ERROR ; 
 int CMD_OK ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 

__attribute__((used)) static int
FUNC5(int argc, char *argv[])
{
	int	i;
	int	res;
	char	line[80];

	res = 0;
	FUNC2();
	for (i = 1; (i < argc) && (res == 0); i++) {
		FUNC4(line, sizeof(line), "*** FILE %s BEGIN ***\n",
		    argv[i]);
		if (FUNC3(line))
			break;
		res = FUNC0(argv[i]);
		if (!res) {
			FUNC4(line, sizeof(line), "*** FILE %s END ***\n",
			    argv[i]);
			res = FUNC3(line);
		}
	}
	FUNC1();

	if (res == 0)
		return (CMD_OK);
	else
		return (CMD_ERROR);
}