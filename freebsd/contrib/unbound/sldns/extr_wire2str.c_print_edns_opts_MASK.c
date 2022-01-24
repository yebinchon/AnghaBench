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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,size_t*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char**,size_t*,char*) ; 
 scalar_t__ FUNC3 (char**,size_t*,scalar_t__) ; 
 scalar_t__ FUNC4 (char**,size_t*,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(char** s, size_t* sl, uint8_t* rdata, size_t rdatalen)
{
	uint16_t option_code, option_len;
	int w = 0;
	while(rdatalen > 0) {
		/* option name */
		if(rdatalen < 4) {
			w += FUNC2(s, sl, " ; malformed: ");
			w += FUNC0(s, sl, rdata, rdatalen);
			return w;
		}
		option_code = FUNC1(rdata);
		option_len = FUNC1(rdata+2);
		rdata += 4;
		rdatalen -= 4;

		/* option value */
		if(rdatalen < (size_t)option_len) {
			w += FUNC2(s, sl, " ; malformed ");
			w += FUNC3(s, sl,
				option_code);
			w += FUNC2(s, sl, ": ");
			w += FUNC0(s, sl, rdata, rdatalen);
			return w;
		}
		w += FUNC2(s, sl, " ; ");
		w += FUNC4(s, sl, option_code,
			rdata, option_len);
		rdata += option_len;
		rdatalen -= option_len;
	}
	return w;
}