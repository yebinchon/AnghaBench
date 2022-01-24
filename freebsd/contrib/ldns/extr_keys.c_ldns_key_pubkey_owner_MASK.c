#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ldns_rdf ;
struct TYPE_3__ {int /*<<< orphan*/ * _pubkey_owner; } ;
typedef  TYPE_1__ ldns_key ;

/* Variables and functions */

ldns_rdf *
FUNC0(const ldns_key *k)
{
	return k->_pubkey_owner;
}