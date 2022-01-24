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

/* Variables and functions */
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int LDNS_WIREPARSE_ERR_SYNTAX_B32_EXT ; 
 size_t FUNC0 (size_t) ; 
 int FUNC1 (char const*,size_t,scalar_t__*,size_t) ; 
 size_t FUNC2 (char const*) ; 

int FUNC3(const char* str, uint8_t* rd, size_t* len)
{
	size_t slen = FUNC2(str);
	size_t sz = FUNC0(slen);
	int n;
	if(*len < 1+sz)
		return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
	rd[0] = (uint8_t)sz;
	n = FUNC1(str, slen, rd+1, *len-1);
	if(n < 0)
		return LDNS_WIREPARSE_ERR_SYNTAX_B32_EXT;
	*len = (size_t)n+1;
	return LDNS_WIREPARSE_ERR_OK;
}