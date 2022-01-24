#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {scalar_t__ id; } ;
typedef  TYPE_1__ sldns_lookup_table ;

/* Variables and functions */
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_CERT_BAD_ALGORITHM ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int /*<<< orphan*/  sldns_cert_algorithms ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(const char* str, uint8_t* rd, size_t* len)
{
	sldns_lookup_table *lt = FUNC0(sldns_cert_algorithms,
		str);
	if(*len < 2)
		return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
	if(lt) {
		FUNC3(rd, (uint16_t)lt->id);
	} else {
		int s = FUNC2(str, rd, len);
		if(s) return s;
		if(FUNC1(rd) == 0)
			return LDNS_WIREPARSE_ERR_CERT_BAD_ALGORITHM;
	}
	*len = 2;
	return LDNS_WIREPARSE_ERR_OK;
}