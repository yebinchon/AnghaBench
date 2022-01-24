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
struct local_zone {int /*<<< orphan*/  data; } ;
struct local_data {int /*<<< orphan*/ * rrsets; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,size_t*) ; 
 scalar_t__ FUNC2 (struct local_data*) ; 
 struct local_data* FUNC3 (struct local_zone*,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct local_data*) ; 

__attribute__((used)) static void 
FUNC5(struct local_zone* z, struct local_data* d, 
	uint8_t* name, size_t len, int labs)
{
	while(d && d->rrsets == NULL && FUNC2(d)) {
		/* is this empty nonterminal? delete */
		/* note, no memory recycling in zone region */
		(void)FUNC4(&z->data, d);

		/* go up and to the next label */
		if(FUNC0(name))
			return;
		FUNC1(&name, &len);
		labs--;
		d = FUNC3(z, name, len, labs);
	}
}