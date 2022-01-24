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
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_SYNTAX ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char*,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(sldns_buffer* strbuf, uint8_t* rr, size_t* len,
	size_t* dname_len, uint8_t* origin, size_t origin_len, uint8_t* prev,
	size_t prev_len, char* token, size_t token_len)
{
	/* split the rr in its parts -1 signals trouble */
	if(FUNC3(strbuf, token, "\t\n ", token_len) == -1) {
		return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX,
			FUNC4(strbuf));
	}

	if(FUNC6(token, "@") == 0) {
		uint8_t* tocopy;
		if (origin) {
			*dname_len = origin_len;
			tocopy = origin;
		} else if (prev) {
			*dname_len = prev_len;
			tocopy = prev;
		} else {
			/* default to root */
			*dname_len = 1;
			tocopy = (uint8_t*)"\0";
		}
		if(*len < *dname_len)
			return FUNC0(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
				FUNC4(strbuf));
		FUNC2(rr, tocopy, *dname_len);
	} else if(*token == '\0') {
		/* no ownername was given, try prev, if that fails
		 * origin, else default to root */
		uint8_t* tocopy;
		if(prev) {
			*dname_len = prev_len;
			tocopy = prev;
		} else if(origin) {
			*dname_len = origin_len;
			tocopy = origin;
		} else {
			*dname_len = 1;
			tocopy = (uint8_t*)"\0";
		}
		if(*len < *dname_len)
			return FUNC0(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
				FUNC4(strbuf));
		FUNC2(rr, tocopy, *dname_len);
	} else {
		size_t dlen = *len;
		int s = FUNC5(token, rr, &dlen,
			origin, origin_len);
		if(s) return FUNC1(s,
			FUNC4(strbuf)-FUNC7(token));
		*dname_len = dlen;
	}
	return LDNS_WIREPARSE_ERR_OK;
}