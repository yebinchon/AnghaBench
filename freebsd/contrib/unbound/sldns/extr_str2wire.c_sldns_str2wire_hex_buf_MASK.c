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

/* Variables and functions */
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_SYNTAX_HEX ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*) ; 

int FUNC5(const char* str, uint8_t* rd, size_t* len)
{
	const char* s = str;
	size_t dlen = 0; /* number of hexdigits parsed */
	while(*s) {
		if(FUNC1((unsigned char)*s)) {
			s++;
			continue;
		}
		if(dlen == 0 && *s == '0' && FUNC4(s+1)) {
			*len = 0;
			return LDNS_WIREPARSE_ERR_OK;
		}
		if(!FUNC2((unsigned char)*s))
			return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX_HEX, s-str);
		if(*len < dlen/2 + 1)
			return FUNC0(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
				s-str);
		if((dlen&1)==0)
			rd[dlen/2] = (uint8_t)FUNC3(*s++) * 16;
		else	rd[dlen/2] += (uint8_t)FUNC3(*s++);
		dlen++;
	}
	if((dlen&1)!=0)
		return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX_HEX, s-str);
	*len = dlen/2;
	return LDNS_WIREPARSE_ERR_OK;
}