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
 size_t LDNS_MAX_DOMAINLEN ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  LDNS_WIREPARSE_ERR_DOMAINNAME_OVERFLOW ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,size_t*,int*) ; 

int FUNC3(const char* str, uint8_t* buf, size_t* len,
	uint8_t* origin, size_t origin_len)
{
	size_t dlen = *len;
	int rel = 0;
	int s = FUNC2(str, buf, &dlen, &rel);
	if(s) return s;

	if(rel && origin && dlen > 0) {
		if(dlen + origin_len - 1 > LDNS_MAX_DOMAINLEN)
			return FUNC0(LDNS_WIREPARSE_ERR_DOMAINNAME_OVERFLOW,
				LDNS_MAX_DOMAINLEN);
		if(dlen + origin_len - 1 > *len)
			return FUNC0(LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL,
				*len);
		FUNC1(buf+dlen-1, origin, origin_len);
		*len = dlen + origin_len - 1;
	} else
		*len = dlen;
	return LDNS_WIREPARSE_ERR_OK;
}