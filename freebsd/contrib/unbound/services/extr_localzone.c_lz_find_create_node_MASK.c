#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct local_zone {int namelabs; int /*<<< orphan*/  data; int /*<<< orphan*/  region; } ;
struct TYPE_2__ {struct local_data* key; } ;
struct local_data {size_t namelen; int namelabs; TYPE_1__ node; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct local_data* FUNC3 (struct local_zone*,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct local_zone* z, uint8_t* nm, size_t nmlen, 
	int nmlabs, struct local_data** res)
{
	struct local_data* ld = FUNC3(z, nm, nmlen, nmlabs);
	if(!ld) {
		/* create a domain name to store rr. */
		ld = (struct local_data*)FUNC6(z->region,
			sizeof(*ld));
		if(!ld) {
			FUNC2("out of memory adding local data");
			return 0;
		}
		ld->node.key = ld;
		ld->name = FUNC5(z->region, nm, nmlen);
		if(!ld->name) {
			FUNC2("out of memory");
			return 0;
		}
		ld->namelen = nmlen;
		ld->namelabs = nmlabs;
		if(!FUNC4(&z->data, &ld->node)) {
			FUNC1(0); /* duplicate name */
		}
		/* see if empty nonterminals need to be created */
		if(nmlabs > z->namelabs) {
			FUNC0(&nm, &nmlen);
			if(!FUNC7(z, nm, nmlen, nmlabs-1, res))
				return 0;
		}
	}
	*res = ld;
	return 1;
}