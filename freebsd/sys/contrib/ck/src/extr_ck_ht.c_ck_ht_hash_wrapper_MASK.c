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
typedef  int /*<<< orphan*/  uint64_t ;
struct ck_ht_hash {unsigned long value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void const*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct ck_ht_hash *h,
    const void *key,
    size_t length,
    uint64_t seed)
{

	h->value = (unsigned long)FUNC0(key, length, seed);
	return;
}