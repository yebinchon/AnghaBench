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
 scalar_t__ LDNS_RR_CLASS_IN ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_SYNTAX_CLASS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static int
FUNC5(sldns_buffer* strbuf, char* token, size_t token_len,
	int* not_there, uint16_t* cl)
{
	/* if 'not_there' then we got token from previous parse routine */
	if(!*not_there) {
		/* parse new token for class */
		if(FUNC1(strbuf, token, "\t\n ", token_len) == -1) {
			return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX_CLASS,
				FUNC2(strbuf));
		}
	} else *not_there = 0;
	*cl = FUNC3(token);
	/* class can be left out too, assume IN, current token must be type */
	if(*cl == 0 && FUNC4(token, "CLASS0") != 0) {
		*not_there = 1;
		*cl = LDNS_RR_CLASS_IN;
	}
	return LDNS_WIREPARSE_ERR_OK;
}