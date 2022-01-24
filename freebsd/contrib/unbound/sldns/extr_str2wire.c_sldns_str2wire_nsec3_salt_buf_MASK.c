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
 int LDNS_WIREPARSE_ERR_SYNTAX_HEX ; 
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int FUNC2 (char const) ; 
 scalar_t__ FUNC3 (char const*) ; 

int FUNC4(const char* str, uint8_t* rd, size_t* len)
{
	int i, salt_length_str = (int)FUNC3(str);
	if (salt_length_str == 1 && str[0] == '-') {
		salt_length_str = 0;
	} else if (salt_length_str % 2 != 0) {
		return LDNS_WIREPARSE_ERR_SYNTAX_HEX;
	}
	if (salt_length_str > 512)
		return LDNS_WIREPARSE_ERR_SYNTAX_HEX;
	if(*len < 1+(size_t)salt_length_str / 2)
		return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
	rd[0] = (uint8_t) (salt_length_str / 2);
	for (i = 0; i < salt_length_str; i += 2) {
		if (FUNC1((unsigned char)str[i]) &&
			FUNC1((unsigned char)str[i+1])) {
			rd[1+i/2] = (uint8_t)(FUNC2(str[i])*16
				+ FUNC2(str[i+1]));
		} else {
			return FUNC0(LDNS_WIREPARSE_ERR_SYNTAX_HEX, i);
		}
	}
	*len = 1 + (size_t)rd[0];
	return LDNS_WIREPARSE_ERR_OK;
}