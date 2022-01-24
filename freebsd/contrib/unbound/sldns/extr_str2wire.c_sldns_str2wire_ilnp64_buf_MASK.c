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
typedef  int /*<<< orphan*/  shorts ;

/* Variables and functions */
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int LDNS_WIREPARSE_ERR_SYNTAX_ILNP64 ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int FUNC2 (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,int*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

int FUNC5(const char* str, uint8_t* rd, size_t* len)
{
	unsigned int a, b, c, d;
	uint16_t shorts[4];
	int l;
	if(*len < sizeof(shorts))
		return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;

	if (FUNC2(str, "%4x:%4x:%4x:%4x%n", &a, &b, &c, &d, &l) != 4 ||
			l != (int)FUNC3(str) || /* more data to read */
			FUNC4(str, "+-")       /* signed hexes */
			)
		return LDNS_WIREPARSE_ERR_SYNTAX_ILNP64;
	shorts[0] = FUNC0(a);
	shorts[1] = FUNC0(b);
	shorts[2] = FUNC0(c);
	shorts[3] = FUNC0(d);
	FUNC1(rd, &shorts, sizeof(shorts));
	*len = sizeof(shorts);
	return LDNS_WIREPARSE_ERR_OK;
}