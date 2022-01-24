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
struct auth_data {int dummy; } ;

/* Variables and functions */
 struct auth_data* FUNC0 (struct auth_zone*,int /*<<< orphan*/ *,size_t) ; 
 struct auth_data* FUNC1 (struct auth_zone*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static struct auth_data*
FUNC2(struct auth_zone* z, uint8_t* dname,
	size_t dname_len)
{
	struct auth_data* n = FUNC1(z, dname, dname_len);
	if(!n) {
		n = FUNC0(z, dname, dname_len);
	}
	return n;
}