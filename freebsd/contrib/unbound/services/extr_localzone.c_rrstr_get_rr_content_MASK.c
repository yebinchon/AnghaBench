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
typedef  scalar_t__ time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,size_t*,size_t*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int FUNC6 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,size_t,size_t) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t,size_t) ; 

int
FUNC10(const char* str, uint8_t** nm, uint16_t* type,
	uint16_t* dclass, time_t* ttl, uint8_t* rr, size_t len,
	uint8_t** rdata, size_t* rdata_len)
{
	size_t dname_len = 0;
	int e = FUNC4(str, rr, &len, &dname_len, 3600,
		NULL, 0, NULL, 0);
	if(e) {
		FUNC1("error parsing local-data at %d: '%s': %s",
			FUNC0(e), str,
			FUNC3(e));
		return 0;
	}
	*nm = FUNC2(rr, dname_len);
	if(!*nm) {
		FUNC1("out of memory");
		return 0;
	}
	*dclass = FUNC5(rr, len, dname_len);
	*type = FUNC9(rr, len, dname_len);
	*ttl = (time_t)FUNC8(rr, len, dname_len);
	*rdata = FUNC7(rr, len, dname_len);
	*rdata_len = FUNC6(rr, len, dname_len)+2;
	return 1;
}