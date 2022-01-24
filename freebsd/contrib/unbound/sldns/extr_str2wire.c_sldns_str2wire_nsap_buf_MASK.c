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
 int LDNS_MAX_RDFLEN ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_INVALID_STR ; 
 int LDNS_WIREPARSE_ERR_LABEL_OVERFLOW ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_SYNTAX_HEX ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (char const*) ; 

int FUNC5(const char* str, uint8_t* rd, size_t* len)
{
	const char* s = str;
	size_t slen;
	size_t dlen = 0; /* number of hexdigits parsed */

	/* just a hex string with optional dots? */
	if (s[0] != '0' || s[1] != 'x')
		return LDNS_WIREPARSE_ERR_INVALID_STR;
	s += 2;
	slen = FUNC4(s);
	if(slen > LDNS_MAX_RDFLEN*2)
		return LDNS_WIREPARSE_ERR_LABEL_OVERFLOW;
	while(*s) {
		if(FUNC1((unsigned char)*s) || *s == '.') {
			s++;
			continue;
		}
		if(!FUNC2((unsigned char)*s))
			return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX_HEX, s-str);
		if(*len < dlen/2 + 1)
			return FUNC0(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
				s-str);
		if((dlen&1)==0)
			rd[dlen/2] = (uint8_t)FUNC3(*s++) * 16;
		else	rd[dlen/2] += FUNC3(*s++);
		dlen++;
	}
	if((dlen&1)!=0)
		return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX_HEX, s-str);
	*len = dlen/2;
	return LDNS_WIREPARSE_ERR_OK;
}