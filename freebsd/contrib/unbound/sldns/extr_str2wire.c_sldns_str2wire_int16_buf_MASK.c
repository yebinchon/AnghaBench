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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_SYNTAX_INT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char**,int) ; 

int FUNC3(const char* str, uint8_t* rd, size_t* len)
{
	char* end;
	uint16_t r = (uint16_t)FUNC2((char*)str, &end, 10);
	if(*end != 0)
		return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX_INT, end-(char*)str);
	if(*len < 2)
		return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
	FUNC1(rd, r);
	*len = 2;
	return LDNS_WIREPARSE_ERR_OK;
}