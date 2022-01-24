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
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 size_t LDNS_MAX_DOMAINLEN ; 
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

size_t
FUNC3(sldns_buffer* query)
{
	size_t len = 0;
	size_t labellen;
	while(1) {
		if(FUNC1(query) < 1)
			return 0; /* parse error, need label len */
		labellen = FUNC0(query);
		if(labellen&0xc0)
			return 0; /* no compression allowed in queries */
		len += labellen + 1;
		if(len > LDNS_MAX_DOMAINLEN)
			return 0; /* too long */
		if(labellen == 0)
			return len;
		if(FUNC1(query) < labellen)
			return 0; /* parse error, need content */
		FUNC2(query, (ssize_t)labellen);
	}
}