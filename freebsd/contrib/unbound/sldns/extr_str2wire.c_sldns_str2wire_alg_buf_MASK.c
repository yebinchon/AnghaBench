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
typedef  scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ id; } ;
typedef  TYPE_1__ sldns_lookup_table ;

/* Variables and functions */
 int LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL ; 
 int LDNS_WIREPARSE_ERR_OK ; 
 int /*<<< orphan*/  sldns_algorithms ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (char const*,scalar_t__*,size_t*) ; 

int FUNC2(const char* str, uint8_t* rd, size_t* len)
{
	sldns_lookup_table *lt = FUNC0(sldns_algorithms, str);
	if(*len < 1)
		return LDNS_WIREPARSE_ERR_BUFFER_TOO_SMALL;
	if(lt) {
		rd[0] = (uint8_t)lt->id;
		*len = 1;
	} else {
		/* try as-is (a number) */
		return FUNC1(str, rd, len);
	}
	return LDNS_WIREPARSE_ERR_OK;
}