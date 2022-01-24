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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 

void FUNC3(FILE * file, char *msg, void *p, int size)
{
#define HEX(x)  ((x) < 10 ? '0' + (x) : 'a' + ((x) -10))
	uint8_t *cp = p;
	int i;

	if (msg)
		FUNC2(msg, file);

	for (i = 0; i < size;) {
		FUNC1(HEX(*cp >> 4), file);
		FUNC1(HEX(*cp & 0xf), file);
		if (++i >= size)
			break;
		FUNC1(HEX(cp[1] >> 4), file);
		FUNC1(HEX(cp[1] & 0xf), file);
		if ((++i) % 16)
			FUNC1(' ', file);
		else
			FUNC1('\n', file);
		cp += 2;
	}
	if (i % 16)
		FUNC1('\n', file);
}