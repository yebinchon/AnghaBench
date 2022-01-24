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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_LABEL_OVERFLOW ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_SYNTAX ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_SYNTAX_INT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (char*,scalar_t__*,size_t*) ; 
 int FUNC3 (char*,scalar_t__*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char) ; 
 scalar_t__ FUNC6 (char*,char**,int) ; 

int FUNC7(const char* str, uint8_t* rd, size_t* len)
{
	char* s, *end;
	int e;
	size_t hitlen, pklen = 0;
	/* presentation format:
	 * 	pk-algo HIThex pubkeybase64
	 * wireformat:
	 * 	hitlen[1byte] pkalgo[1byte] pubkeylen[2byte] [hit] [pubkey] */
	if(*len < 4)
		return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;

	/* read PK algorithm */
	rd[1] = (uint8_t)FUNC6((char*)str, &s, 10);
	if(*s != ' ')
		return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX_INT, s-(char*)str);
	s++;
	while(*s == ' ')
		s++;

	/* read HIT hex tag */
	/* zero terminate the tag (replace later) */
	end = FUNC5(s, ' ');
	if(!end) return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX, s-(char*)str);
	*end = 0;
	hitlen = *len - 4;
	if((e = FUNC3(s, rd+4, &hitlen)) != 0) {
		*end = ' ';
		return FUNC1(e, s-(char*)str);
	}
	if(hitlen > 255) {
		*end = ' ';
		return FUNC0(LDNS_WIREPARSE_ERR_LABEL_OVERFLOW, s-(char*)str+255*2);
	}
	rd[0] = (uint8_t)hitlen;
	*end = ' ';
	s = end+1;

	/* read pubkey base64 sequence */
	pklen = *len - 4 - hitlen;
	if((e = FUNC2(s, rd+4+hitlen, &pklen)) != 0)
		return FUNC1(e, s-(char*)str);
	if(pklen > 65535)
		return FUNC0(LDNS_WIREPARSE_ERR_LABEL_OVERFLOW, s-(char*)str+65535);
	FUNC4(rd+2, (uint16_t)pklen);

	*len = 4 + hitlen + pklen;
	return LDNS_WIREPARSE_ERR_OK;
}