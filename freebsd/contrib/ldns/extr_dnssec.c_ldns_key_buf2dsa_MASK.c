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
typedef  int /*<<< orphan*/  ldns_buffer ;
typedef  int /*<<< orphan*/  DSA ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned char const*,int /*<<< orphan*/ ) ; 

DSA *
FUNC3(const ldns_buffer *key)
{
	return FUNC2((const unsigned char*)FUNC0(key),
						   FUNC1(key));
}