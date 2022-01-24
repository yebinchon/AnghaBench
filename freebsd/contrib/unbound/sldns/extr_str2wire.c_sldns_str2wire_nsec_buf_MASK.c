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
typedef  int /*<<< orphan*/  window_in_use ;
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  typebits ;
typedef  int /*<<< orphan*/  token ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_SYNTAX_TYPE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

int FUNC9(const char* str, uint8_t* rd, size_t* len)
{
	const char *delim = "\n\t ";
	char token[64]; /* for a type name */
	size_t type_count = 0;
	int block;
	size_t used = 0;
	uint16_t maxtype = 0;
	uint8_t typebits[8192]; /* 65536 bits */
	uint8_t window_in_use[256];

	/* string in buffer */
	sldns_buffer strbuf;
	FUNC3(&strbuf, (uint8_t*)str, FUNC8(str));

	/* parse the types */
	FUNC1(typebits, 0, sizeof(typebits));
	FUNC1(window_in_use, 0, sizeof(window_in_use));
	while(FUNC5(&strbuf) > 0 &&
		FUNC2(&strbuf, token, delim, sizeof(token)) != -1) {
		uint16_t t = FUNC6(token);
		if(token[0] == 0)
			continue;
		if(t == 0 && FUNC7(token, "TYPE0") != 0)
			return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX_TYPE,
				FUNC4(&strbuf));
		typebits[t/8] |= (0x80>>(t%8));
		window_in_use[t/256] = 1;
		type_count++;
		if(t > maxtype) maxtype = t;
	}

	/* empty NSEC bitmap */
	if(type_count == 0) {
		*len = 0;
		return LDNS_WIREPARSE_ERR_OK;
	}

	/* encode windows {u8 windowblock, u8 bitmaplength, 0-32u8 bitmap},
	 * block is 0-255 upper octet of types, length if 0-32. */
	for(block = 0; block <= (int)maxtype/256; block++) {
		int i, blocklen = 0;
		if(!window_in_use[block])
			continue;
		for(i=0; i<32; i++) {
			if(typebits[block*32+i] != 0)
				blocklen = i+1;
		}
		if(blocklen == 0)
			continue; /* empty window should have been !in_use */
		if(used+blocklen+2 > *len)
			return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
		rd[used+0] = (uint8_t)block;
		rd[used+1] = (uint8_t)blocklen;
		for(i=0; i<blocklen; i++) {
			rd[used+2+i] = typebits[block*32+i];
		}
		used += blocklen+2;
	}
	*len = used;
	return LDNS_WIREPARSE_ERR_OK;
}