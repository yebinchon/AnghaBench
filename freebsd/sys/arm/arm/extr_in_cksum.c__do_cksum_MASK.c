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
typedef  union q_util {int dummy; } q_util ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  REDUCE32 ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 

__attribute__((used)) static
uint64_t FUNC1(void *addr, int len)
{
	uint64_t sum;
	union q_util q_util;

	sum = FUNC0(addr, len);
	REDUCE32;
	return (sum);
}