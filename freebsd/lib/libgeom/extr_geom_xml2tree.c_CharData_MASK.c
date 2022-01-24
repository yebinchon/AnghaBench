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
struct mystate {size_t level; int /*<<< orphan*/ * sbuf; } ;
typedef  char XML_Char ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void
FUNC2(void *userData , const XML_Char *s , int len)
{
	struct mystate *mt;
	const char *b, *e;

	mt = userData;

	b = s;
	e = s + len - 1;
	while (FUNC0(*b) && b < e)
		b++;
	while (FUNC0(*e) && e > b)
		e--;
	if (e != b || (*b && !FUNC0(*b)))
		FUNC1(mt->sbuf[mt->level], b, e - b + 1);
}