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
typedef  int /*<<< orphan*/  rr ;

/* Variables and functions */
 int LDNS_RR_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,size_t*,size_t*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t,size_t) ; 

__attribute__((used)) static int
FUNC7(const char* str, uint8_t** nm, uint16_t* dclass,
	uint16_t* dtype)
{
	uint8_t rr[LDNS_RR_BUF_SIZE];
	size_t len = sizeof(rr), dname_len = 0;
	int s = FUNC4(str, rr, &len, &dname_len, 3600,
		NULL, 0, NULL, 0);
	if(s != 0) {
		FUNC1("error parsing local-data at %d '%s': %s",
			FUNC0(s), str,
			FUNC3(s));
		return 0;
	}
	*nm = FUNC2(rr, dname_len);
	*dclass = FUNC5(rr, len, dname_len);
	*dtype = FUNC6(rr, len, dname_len);
	if(!*nm) {
		FUNC1("out of memory");
		return 0;
	}
	return 1;
}