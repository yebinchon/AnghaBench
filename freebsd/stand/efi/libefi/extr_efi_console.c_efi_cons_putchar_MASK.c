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
typedef  int /*<<< orphan*/  ch ;

/* Variables and functions */
 int RB_SERIAL ; 
 int /*<<< orphan*/ * buffer ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int mode ; 
 int /*<<< orphan*/  teken ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 

void
FUNC3(int c)
{
	unsigned char ch = c;

	if ((mode & RB_SERIAL) != 0) {
		FUNC1(ch);
		return;
	}

	if (buffer != NULL)
		FUNC2(&teken, &ch, sizeof (ch));
	else
		FUNC0(c);
}