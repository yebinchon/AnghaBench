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

/* Variables and functions */
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int LDNS_WIREPARSE_ERR_SYNTAX_B64 ; 
 int FUNC0 (char const*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

int FUNC4(const char* str, uint8_t* rd, size_t* len)
{
	size_t sz = FUNC1(FUNC3(str));
	int n;
	if(FUNC2(str, "0") == 0) {
		*len = 0;
		return LDNS_WIREPARSE_ERR_OK;
	}
	if(*len < sz)
		return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
	n = FUNC0(str, rd, *len);
	if(n < 0)
		return LDNS_WIREPARSE_ERR_SYNTAX_B64;
	*len = (size_t)n;
	return LDNS_WIREPARSE_ERR_OK;
}