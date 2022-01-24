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
struct pkcs11_provider {scalar_t__ refcount; struct pkcs11_provider* slotinfo; struct pkcs11_provider* slotlist; scalar_t__ valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct pkcs11_provider*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct pkcs11_provider*) ; 
 int /*<<< orphan*/  FUNC2 (struct pkcs11_provider*) ; 

__attribute__((used)) static void
FUNC3(struct pkcs11_provider *p)
{
	FUNC0("pkcs11_provider_unref: %p refcount %d", p, p->refcount);
	if (--p->refcount <= 0) {
		if (p->valid)
			FUNC1("pkcs11_provider_unref: %p still valid", p);
		FUNC2(p->slotlist);
		FUNC2(p->slotinfo);
		FUNC2(p);
	}
}