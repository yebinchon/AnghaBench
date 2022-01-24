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
 int LDNS_WIREPARSE_ERR_INVALID_STR ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int LDNS_WIREPARSE_ERR_SYNTAX_BAD_ESCAPE ; 
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (scalar_t__*,char const**) ; 

int FUNC2(const char* str, uint8_t* rd, size_t* len)
{
	uint8_t ch = 0;
	size_t sl = 0;
	const char* s = str;
	/* skip length byte */
	if(*len < 1)
		return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;

	/* read characters */
	while(FUNC1(&ch, &s)) {
		if(sl >= 255)
			return FUNC0(LDNS_WIREPARSE_ERR_INVALID_STR, s-str);
		if(*len < sl+1)
			return FUNC0(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
				s-str);
		rd[++sl] = ch;
	}
	if(!s)
		return LDNS_WIREPARSE_ERR_SYNTAX_BAD_ESCAPE;
	rd[0] = (uint8_t)sl;
	*len = sl+1;
	return LDNS_WIREPARSE_ERR_OK;
}