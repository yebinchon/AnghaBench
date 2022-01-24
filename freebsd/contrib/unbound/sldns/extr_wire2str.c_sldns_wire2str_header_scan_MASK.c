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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 size_t LDNS_HEADER_SIZE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (char*,int /*<<< orphan*/ **,size_t*,char**,size_t*) ; 
 int FUNC16 (char**,size_t*,char*,...) ; 
 scalar_t__ FUNC17 (char**,size_t*,int) ; 
 scalar_t__ FUNC18 (char**,size_t*,int) ; 

int FUNC19(uint8_t** d, size_t* dlen, char** s,
	size_t* slen)
{
	int w = 0;
	int opcode, rcode;
	w += FUNC16(s, slen, ";; ->>HEADER<<- ");
	if(*dlen == 0)
		return w+FUNC16(s, slen, "Error empty packet");
	if(*dlen < 4)
		return w+FUNC15("Error header too short 0x", d, dlen, s, slen);
	opcode = (int)FUNC7(*d);
	rcode = (int)FUNC11(*d);
	w += FUNC16(s, slen, "opcode: ");
	w += FUNC17(s, slen, opcode);
	w += FUNC16(s, slen, ", ");
	w += FUNC16(s, slen, "rcode: ");
	w += FUNC18(s, slen, rcode);
	w += FUNC16(s, slen, ", ");
	w += FUNC16(s, slen, "id: %d\n", (int)FUNC5(*d));
	w += FUNC16(s, slen, ";; flags:");
	if(FUNC9(*d)) w += FUNC16(s, slen, " qr");
	if(FUNC0(*d)) w += FUNC16(s, slen, " aa");
	if(FUNC13(*d)) w += FUNC16(s, slen, " tc");
	if(FUNC12(*d)) w += FUNC16(s, slen, " rd");
	if(FUNC4(*d)) w += FUNC16(s, slen, " cd");
	if(FUNC10(*d)) w += FUNC16(s, slen, " ra");
	if(FUNC1(*d)) w += FUNC16(s, slen, " ad");
	if(FUNC14(*d))  w += FUNC16(s, slen, " z");
	w += FUNC16(s, slen, " ; ");
	if(*dlen < LDNS_HEADER_SIZE)
		return w+FUNC15("Error header too short 0x", d, dlen, s, slen);
	w += FUNC16(s, slen, "QUERY: %d, ", (int)FUNC8(*d));
	w += FUNC16(s, slen, "ANSWER: %d, ", (int)FUNC2(*d));
	w += FUNC16(s, slen, "AUTHORITY: %d, ", (int)FUNC6(*d));
	w += FUNC16(s, slen, "ADDITIONAL: %d ", (int)FUNC3(*d));
	*d += LDNS_HEADER_SIZE;
	*dlen -= LDNS_HEADER_SIZE;
	return w;
}