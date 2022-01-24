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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
struct auth_zone {scalar_t__ dclass; } ;
struct auth_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct auth_data*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int*) ; 
 struct auth_data* FUNC1 (struct auth_zone*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,size_t,size_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,size_t,size_t) ; 

__attribute__((used)) static int
FUNC8(struct auth_zone* z, uint8_t* rr, size_t rr_len,
	size_t dname_len, int* duplicate)
{
	struct auth_data* node;
	uint8_t* dname = rr;
	uint16_t rr_type = FUNC7(rr, rr_len, dname_len);
	uint16_t rr_class = FUNC3(rr, rr_len, dname_len);
	uint32_t rr_ttl = FUNC6(rr, rr_len, dname_len);
	size_t rdatalen = ((size_t)FUNC4(rr, rr_len,
		dname_len))+2;
	/* rdata points to rdata prefixed with uint16 rdatalength */
	uint8_t* rdata = FUNC5(rr, rr_len, dname_len);

	if(rr_class != z->dclass) {
		FUNC2("wrong class for RR");
		return 0;
	}
	if(!(node=FUNC1(z, dname, dname_len))) {
		FUNC2("cannot create domain");
		return 0;
	}
	if(!FUNC0(node, rr_type, rr_ttl, rdata, rdatalen,
		duplicate)) {
		FUNC2("cannot add RR to domain");
		return 0;
	}
	return 1;
}