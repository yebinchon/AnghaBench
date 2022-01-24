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
typedef  scalar_t__ uint16_t ;
struct auth_zone {scalar_t__ dclass; int /*<<< orphan*/  data; } ;
struct auth_data {int /*<<< orphan*/ * rrsets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct auth_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_data*,scalar_t__,int /*<<< orphan*/ *,size_t,int*) ; 
 struct auth_data* FUNC2 (struct auth_zone*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct auth_data*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,size_t,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,size_t,size_t) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,size_t,size_t) ; 

__attribute__((used)) static int
FUNC9(struct auth_zone* z, uint8_t* rr, size_t rr_len,
	size_t dname_len, int* nonexist)
{
	struct auth_data* node;
	uint8_t* dname = rr;
	uint16_t rr_type = FUNC8(rr, rr_len, dname_len);
	uint16_t rr_class = FUNC5(rr, rr_len, dname_len);
	size_t rdatalen = ((size_t)FUNC6(rr, rr_len,
		dname_len))+2;
	/* rdata points to rdata prefixed with uint16 rdatalength */
	uint8_t* rdata = FUNC7(rr, rr_len, dname_len);

	if(rr_class != z->dclass) {
		FUNC3("wrong class for RR");
		/* really also a nonexisting entry, because no records
		 * of that class in the zone, but return an error because
		 * getting records of the wrong class is a failure of the
		 * zone transfer */
		return 0;
	}
	node = FUNC2(z, dname, dname_len);
	if(!node) {
		/* node with that name does not exist */
		/* nonexisting entry, because no such name */
		*nonexist = 1;
		return 1;
	}
	if(!FUNC1(node, rr_type, rdata, rdatalen, nonexist)) {
		/* alloc failure or so */
		return 0;
	}
	/* remove the node, if necessary */
	/* an rrsets==NULL entry is not kept around for empty nonterminals,
	 * and also parent nodes are not kept around, so we just delete it */
	if(node->rrsets == NULL) {
		(void)FUNC4(&z->data, node);
		FUNC0(node);
	}
	return 1;
}