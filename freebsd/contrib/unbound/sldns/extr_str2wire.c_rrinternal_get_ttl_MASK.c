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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ LDNS_DEFAULT_TTL ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_SYNTAX_TTL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,char const**) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(sldns_buffer* strbuf, char* token, size_t token_len,
	int* not_there, uint32_t* ttl, uint32_t default_ttl)
{
	const char* endptr;
	if(FUNC2(strbuf, token, "\t\n ", token_len) == -1) {
		return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX_TTL,
			FUNC3(strbuf));
	}
	*ttl = (uint32_t) FUNC4(token, &endptr);

	if (FUNC5(token) > 0 && !FUNC1((unsigned char)token[0])) {
		*not_there = 1;
		/* ah, it's not there or something */
		if (default_ttl == 0) {
			*ttl = LDNS_DEFAULT_TTL;
		} else {
			*ttl = default_ttl;
		}
	}
	return LDNS_WIREPARSE_ERR_OK;
}