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
typedef  int /*<<< orphan*/  strip ;
typedef  int /*<<< orphan*/  full ;
typedef  int /*<<< orphan*/  abbrev ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*,char*) ; 

void
FUNC5(char *line)
{
	/* have to null-terminate - these functions are designed for
	 * structures with fixed-length char arrays, and don't null-term.*/
	char full[17], strip[9], abbrev[5];

	FUNC3(full, '\0', sizeof(full));
	FUNC3(strip, '\0', sizeof(strip));
	FUNC3(abbrev, '\0', sizeof(abbrev));

	FUNC1(full, line, sizeof(full)-1);
	FUNC2(strip, full, sizeof(strip)-1);
	FUNC0(abbrev, full, sizeof(abbrev)-1);
	FUNC4("%s: %s, %s, %s\n", line, full, strip, abbrev);

}