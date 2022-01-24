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

/* Variables and functions */
 int /*<<< orphan*/  TELOPT_LINEMODE ; 
 int linemode ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(int bit, int on)
{
    unsigned char c;

    if (FUNC1(TELOPT_LINEMODE)) {
	FUNC2("?Need to have LINEMODE option enabled first.\r\n");
	FUNC2("'mode ?' for help.\r\n");
 	return 0;
    }

    if (on)
	c = (linemode | bit);
    else
	c = (linemode & ~bit);
    FUNC0(&c, 1, 1);
    return 1;
}