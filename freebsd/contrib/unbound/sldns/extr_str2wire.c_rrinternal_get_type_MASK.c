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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int LDNS_WIREPARSE_ERR_OK ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_SYNTAX_TYPE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(sldns_buffer* strbuf, char* token, size_t token_len,
	int* not_there, uint16_t* tp)
{
	/* if 'not_there' then we got token from previous parse routine */
	if(!*not_there) {
		/* parse new token for type */
		if(FUNC1(strbuf, token, "\t\n ", token_len) == -1) {
			return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX_TYPE,
				FUNC2(strbuf));
		}
	}
	*tp = FUNC3(token);
	if(*tp == 0 && FUNC4(token, "TYPE0") != 0) {
		return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX_TYPE,
			FUNC2(strbuf));
	}
	return LDNS_WIREPARSE_ERR_OK;
}