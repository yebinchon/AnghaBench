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
struct auth_zone {struct auth_zone* zonefile; struct auth_zone* name; int /*<<< orphan*/  data; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  auth_data_del ; 
 int /*<<< orphan*/  FUNC0 (struct auth_zone*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct auth_zone* z)
{
	if(!z) return;
	FUNC1(&z->lock);
	FUNC2(&z->data, auth_data_del, NULL);
	FUNC0(z->name);
	FUNC0(z->zonefile);
	FUNC0(z);
}