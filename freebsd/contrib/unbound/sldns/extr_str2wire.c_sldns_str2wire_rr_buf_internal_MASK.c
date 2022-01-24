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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  token ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MAX_RDFLEN ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,size_t*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,size_t*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static int
FUNC8(const char* str, uint8_t* rr, size_t* len,
	size_t* dname_len, uint32_t default_ttl, uint8_t* origin,
	size_t origin_len, uint8_t* prev, size_t prev_len, int question)
{
	int status;
	int not_there = 0;
	char token[LDNS_MAX_RDFLEN+1];
	uint32_t ttl = 0;
	uint16_t tp = 0, cl = 0;
	size_t ddlen = 0;

	/* string in buffer */
	sldns_buffer strbuf;
	FUNC6(&strbuf, (uint8_t*)str, FUNC7(str));
	if(!dname_len) dname_len = &ddlen;

	/* parse the owner */
	if((status=FUNC1(&strbuf, rr, len, dname_len, origin,
		origin_len, prev, prev_len, token, sizeof(token))) != 0)
		return status;

	/* parse the [ttl] [class] <type> */
	if((status=FUNC2(&strbuf, token, sizeof(token),
		&not_there, &ttl, default_ttl)) != 0)
		return status;
	if((status=FUNC0(&strbuf, token, sizeof(token),
		&not_there, &cl)) != 0)
		return status;
	if((status=FUNC3(&strbuf, token, sizeof(token),
		&not_there, &tp)) != 0)
		return status;
	/* put ttl, class, type into the rr result */
	if((status=FUNC5(&strbuf, rr, *len, *dname_len, tp, cl,
		ttl, question)) != 0)
		return status;
	/* for a question-RR we are done, no rdata */
	if(question) {
		*len = *dname_len + 4;
		return LDNS_WIREPARSE_ERR_OK;
	}

	/* rdata */
	if((status=FUNC4(&strbuf, token, sizeof(token),
		rr, len, *dname_len, tp, origin, origin_len)) != 0)
		return status;

	return LDNS_WIREPARSE_ERR_OK;
}