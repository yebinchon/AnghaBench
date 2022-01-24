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
typedef  int /*<<< orphan*/  token ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_INVALID_STR ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,int*,size_t*) ; 
 int FUNC8 (char*,int*,size_t*) ; 
 int FUNC9 (char const*,int*,size_t*) ; 
 int FUNC10 (char*,int*,size_t*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

int FUNC13(const char* str, uint8_t* rd, size_t* len)
{
	size_t gwlen = 0, keylen = 0;
	int s;
	uint8_t gwtype;
	char token[512];
	sldns_buffer strbuf;
	FUNC5(&strbuf, (uint8_t*)str, FUNC12(str));

	if(*len < 3)
		return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
	/* precedence */
	if(FUNC3(&strbuf, token, "\t\n ", sizeof(token)) <= 0)
		return FUNC0(LDNS_WIREPARSE_ERR_INVALID_STR,
			FUNC6(&strbuf));
	rd[0] = (uint8_t)FUNC2(token);
	/* gateway_type */
	if(FUNC3(&strbuf, token, "\t\n ", sizeof(token)) <= 0)
		return FUNC0(LDNS_WIREPARSE_ERR_INVALID_STR,
			FUNC6(&strbuf));
	rd[1] = (uint8_t)FUNC2(token);
	gwtype = rd[1];
	/* algorithm */
	if(FUNC3(&strbuf, token, "\t\n ", sizeof(token)) <= 0)
		return FUNC0(LDNS_WIREPARSE_ERR_INVALID_STR,
			FUNC6(&strbuf));
	rd[2] = (uint8_t)FUNC2(token);

	/* gateway */
	if(FUNC3(&strbuf, token, "\t\n ", sizeof(token)) <= 0)
		return FUNC0(LDNS_WIREPARSE_ERR_INVALID_STR,
			FUNC6(&strbuf));
	if(gwtype == 0) {
		/* NOGATEWAY */
		if(FUNC11(token, ".") != 0)
			return FUNC0(LDNS_WIREPARSE_ERR_INVALID_STR,
				FUNC6(&strbuf));
		gwlen = 0;
	} else if(gwtype == 1) {
		/* IP4 */
		gwlen = *len - 3;
		s = FUNC7(token, rd+3, &gwlen);
		if(s) return FUNC1(s, FUNC6(&strbuf));
	} else if(gwtype == 2) {
		/* IP6 */
		gwlen = *len - 3;
		s = FUNC8(token, rd+3, &gwlen);
		if(s) return FUNC1(s, FUNC6(&strbuf));
	} else if(gwtype == 3) {
		/* DNAME */
		gwlen = *len - 3;
		s = FUNC10(token, rd+3, &gwlen);
		if(s) return FUNC1(s, FUNC6(&strbuf));
	} else {
		/* unknown gateway type */
		return FUNC0(LDNS_WIREPARSE_ERR_INVALID_STR,
			FUNC6(&strbuf));
	}
	/* double check for size */
	if(*len < 3 + gwlen)
		return FUNC0(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
			FUNC6(&strbuf));

	/* publickey in remainder of strbuf */
	keylen = *len - 3 - gwlen;
	s = FUNC9((const char*)FUNC4(&strbuf),
		rd+3+gwlen, &keylen);
	if(s) return FUNC1(s, FUNC6(&strbuf));

	*len = 3 + gwlen + keylen;
	return LDNS_WIREPARSE_ERR_OK;
}