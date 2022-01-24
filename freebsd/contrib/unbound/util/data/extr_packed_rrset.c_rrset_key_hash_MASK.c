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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  t ;
struct packed_rrset_key {int /*<<< orphan*/  flags; int /*<<< orphan*/  rrset_class; int /*<<< orphan*/  dname; int /*<<< orphan*/  type; } ;
typedef  int hashvalue_type ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

hashvalue_type
FUNC3(struct packed_rrset_key* key)
{
	/* type is hashed in host order */
	uint16_t t = FUNC2(key->type);
	/* Note this MUST be identical to pkt_hash_rrset in msgparse.c */
	/* this routine does not have a compressed name */
	hashvalue_type h = 0xab;
	h = FUNC0(key->dname, h);
	h = FUNC1(&t, sizeof(t), h);
	h = FUNC1(&key->rrset_class, sizeof(uint16_t), h);
	h = FUNC1(&key->flags, sizeof(uint32_t), h);
	return h;
}