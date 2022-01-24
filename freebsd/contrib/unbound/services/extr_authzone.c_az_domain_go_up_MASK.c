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
struct auth_zone {int dummy; } ;
struct auth_data {size_t namelen; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 struct auth_data* FUNC0 (struct auth_zone*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,size_t*) ; 

__attribute__((used)) static struct auth_data*
FUNC3(struct auth_zone* z, struct auth_data* n)
{
	uint8_t* nm = n->name;
	size_t nmlen = n->namelen;
	while(!FUNC1(nm)) {
		FUNC2(&nm, &nmlen);
		if((n=FUNC0(z, nm, nmlen)) != NULL)
			return n;
	}
	return NULL;
}