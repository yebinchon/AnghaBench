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
struct asn1_oid {int len; int* oid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct asn1_oid*) ; 

__attribute__((used)) static int FUNC1(struct asn1_oid *oid, unsigned long alg)
{
	return oid->len == 7 &&
		FUNC0(oid) &&
		oid->oid[4] == 1 /* pkcs */ &&
		oid->oid[5] == 5 /* pkcs-5 */ &&
		oid->oid[6] == alg;
}