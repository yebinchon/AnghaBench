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
typedef  unsigned int uint8_t ;

/* Variables and functions */
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int LDNS_WIREPARSE_ERR_SYNTAX_EUI48 ; 
 int FUNC0 (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,int*) ; 
 scalar_t__ FUNC1 (char const*) ; 

int FUNC2(const char* str, uint8_t* rd, size_t* len)
{
	unsigned int a, b, c, d, e, f;
	int l;

	if(*len < 6)
		return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
	if (FUNC0(str, "%2x-%2x-%2x-%2x-%2x-%2x%n",
			&a, &b, &c, &d, &e, &f, &l) != 6 ||
			l != (int)FUNC1(str))
		return LDNS_WIREPARSE_ERR_SYNTAX_EUI48;
	rd[0] = a;
	rd[1] = b;
	rd[2] = c;
	rd[3] = d;
	rd[4] = e;
	rd[5] = f;
	*len = 6;
	return LDNS_WIREPARSE_ERR_OK;
}