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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char**,size_t*,char*,...) ; 
 scalar_t__ FUNC4 (char**,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char**,size_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(uint8_t** d, size_t* dl, char** s, size_t* sl)
{
	int w = 0;
	uint16_t t, c;
	uint32_t ttl;
	if(*dl < 8) {
		if(*dl < 4)
			return w + FUNC0("; Error malformed 0x",
				d, dl, s, sl);
		/* these print values or 0x.. if none left */
		t = FUNC1(*d);
		c = FUNC1((*d)+2);
		(*d)+=4;
		(*dl)-=4;
		w += FUNC4(s, sl, c);
		w += FUNC3(s, sl, "\t");
		w += FUNC5(s, sl, t);
		if(*dl == 0)
			return w + FUNC3(s, sl, "; Error no ttl");
		return w + FUNC0(
			"; Error malformed ttl 0x", d, dl, s, sl);
	}
	t = FUNC1(*d);
	c = FUNC1((*d)+2);
	ttl = FUNC2((*d)+4);
	(*d)+=8;
	(*dl)-=8;
	w += FUNC3(s, sl, "%lu\t", (unsigned long)ttl);
	w += FUNC4(s, sl, c);
	w += FUNC3(s, sl, "\t");
	w += FUNC5(s, sl, t);
	return w;
}