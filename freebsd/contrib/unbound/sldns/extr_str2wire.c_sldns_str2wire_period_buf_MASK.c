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

/* Variables and functions */
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_SYNTAX_PERIOD ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(const char* str, uint8_t* rd, size_t* len)
{
	const char* end;
	uint32_t p = FUNC1(str, &end);
	if(*end != 0)
		return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX_PERIOD, end-str);
	if(*len < 4)
		return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
	FUNC2(rd, p);
	*len = 4;
	return LDNS_WIREPARSE_ERR_OK;
}