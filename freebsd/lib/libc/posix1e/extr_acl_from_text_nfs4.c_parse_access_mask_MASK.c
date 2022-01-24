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
typedef  int /*<<< orphan*/  acl_perm_t ;
typedef  int /*<<< orphan*/  acl_entry_t ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(char *str, acl_entry_t entry)
{
	int error;
	acl_perm_t perm;

	error = FUNC0(str, &perm);
	if (error)
		return (error);

	error = FUNC1(entry, &perm);

	return (error);
}