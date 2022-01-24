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
#define  EQUAL 130 
#define  GREATER 129 
#define  LESS 128 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*,char*,char*) ; 

__attribute__((used)) static char *
FUNC2(char *string, char *front, char *back, long tl)
{
	char *end;
	while (front < back) {
		end = tl && back-front > tl ? front+tl : back;
		switch (FUNC1(string, front, end)) {
		case EQUAL:		/* Found it. */
			return (front);
		case LESS:		/* No such string. */
			return (NULL);
		case GREATER:		/* Keep going. */
			break;
		}
		FUNC0(front, back);
	}
	return (NULL);
}