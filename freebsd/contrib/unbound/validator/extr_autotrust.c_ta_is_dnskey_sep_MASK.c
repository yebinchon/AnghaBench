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
struct autr_ta {int /*<<< orphan*/  dname_len; int /*<<< orphan*/  rr_len; int /*<<< orphan*/  rr; } ;

/* Variables and functions */
 int DNSKEY_BIT_SEP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct autr_ta* ta)
{
	return (FUNC0(
		FUNC3(ta->rr, ta->rr_len, ta->dname_len),
		FUNC1(ta->rr, ta->rr_len, ta->dname_len),
		FUNC2(ta->rr, ta->rr_len, ta->dname_len)
		) & DNSKEY_BIT_SEP);
}