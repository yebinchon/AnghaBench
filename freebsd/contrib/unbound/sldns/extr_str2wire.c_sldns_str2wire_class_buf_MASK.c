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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int LDNS_WIREPARSE_ERR_SYNTAX_CLASS ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

int FUNC3(const char* str, uint8_t* rd, size_t* len)
{
	uint16_t c = FUNC0(str);
	if(c == 0 && FUNC2(str, "CLASS0") != 0)
		return LDNS_WIREPARSE_ERR_SYNTAX_CLASS;
	if(*len < 2)
		return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
	FUNC1(rd, c);
	*len = 2;
	return LDNS_WIREPARSE_ERR_OK;
}