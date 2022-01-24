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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  o_mode_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int ACE_READ_ACL ; 
 int ACE_READ_ATTRIBUTES ; 
 int ENOTSUP ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(uint32_t mask, o_mode_t *modep, boolean_t isdir)
{
	/* ACE_READ_ACL and ACE_READ_ATTRIBUTES must both be set */
	if ((mask & (ACE_READ_ACL | ACE_READ_ATTRIBUTES)) !=
	    (ACE_READ_ACL | ACE_READ_ATTRIBUTES)) {
		return (ENOTSUP);
	}

	return (FUNC0(mask, modep, isdir));
}