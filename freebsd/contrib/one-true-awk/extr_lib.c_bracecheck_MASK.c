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
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char,char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  bracecnt ; 
 int /*<<< orphan*/  brackcnt ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  parencnt ; 

void FUNC3(void)
{
	int c;
	static int beenhere = 0;

	if (beenhere++)
		return;
	while ((c = FUNC2()) != EOF && c != '\0')
		FUNC1(c);
	FUNC0(bracecnt, '{', '}');
	FUNC0(brackcnt, '[', ']');
	FUNC0(parencnt, '(', ')');
}