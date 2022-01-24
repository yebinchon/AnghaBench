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
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_SYNTAX_INT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char**,int) ; 

int FUNC2(const char* str, uint8_t* rd, size_t* len)
{
	char* end;
	uint8_t r = (uint8_t)FUNC1((char*)str, &end, 10);
	if(*end != 0)
		return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX_INT, end-(char*)str);
	if(*len < 1)
		return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
	rd[0] = r;
	*len = 1;
	return LDNS_WIREPARSE_ERR_OK;
}