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
typedef  int /*<<< orphan*/  ldns_status ;
typedef  int /*<<< orphan*/  ldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 

ldns_status
FUNC3(ldns_buffer *sig, ldns_buffer *rrset, ldns_buffer *key)
{
	return FUNC2(
			 (unsigned char*)FUNC0(sig),
			 FUNC1(sig),
			 rrset,
			 (unsigned char*) FUNC0(key),
			 FUNC1(key));
}