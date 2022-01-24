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
typedef  int /*<<< orphan*/  uint8_t ;
struct val_anchors {int dummy; } ;
struct trust_anchor {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_DS ; 
 struct trust_anchor* FUNC0 (struct val_anchors*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,size_t*) ; 

__attribute__((used)) static struct trust_anchor*
FUNC4(struct val_anchors* anchors, const char* str)
{
	struct trust_anchor* ta;
	size_t dname_len = 0;
	uint8_t* nm = FUNC3(str, &dname_len);
	if(!nm) {
		FUNC2("parse error in domain name '%s'", str);
		return NULL;
	}
	ta = FUNC0(anchors, nm, LDNS_RR_TYPE_DS,
		LDNS_RR_CLASS_IN, NULL, 0);
	FUNC1(nm);
	return ta;
}