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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_SYNTAX_INT ; 
 int LDNS_WIREPARSE_ERR_SYNTAX_INTEGER_OVERFLOW ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (char*,char**,int) ; 
 scalar_t__ FUNC3 (char*,char**,int) ; 

int FUNC4(const char* str, uint8_t* rd, size_t* len)
{
	char* end;
	uint32_t r;
	errno = 0; /* must set to zero before call,
			note race condition on errno */
	if(*str == '-')
		r = (uint32_t)FUNC2((char*)str, &end, 10);
	else	r = (uint32_t)FUNC3((char*)str, &end, 10);
	if(*end != 0)
		return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX_INT, end-(char*)str);
	if(errno == ERANGE)
		return LDNS_WIREPARSE_ERR_SYNTAX_INTEGER_OVERFLOW;
	if(*len < 4)
		return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
	FUNC1(rd, r);
	*len = 4;
	return LDNS_WIREPARSE_ERR_OK;
}