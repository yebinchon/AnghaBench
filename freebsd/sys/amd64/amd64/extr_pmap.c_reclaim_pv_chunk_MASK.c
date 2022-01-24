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
typedef  int /*<<< orphan*/ * vm_page_t ;
struct rwlock {int dummy; } ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,struct rwlock**,int) ; 
 int vm_ndomains ; 

__attribute__((used)) static vm_page_t
FUNC2(pmap_t locked_pmap, struct rwlock **lockp)
{
	vm_page_t m;
	int i, domain;

	domain = FUNC0(domain);
	for (i = 0; i < vm_ndomains; i++) {
		m = FUNC1(locked_pmap, lockp, domain);
		if (m != NULL)
			break;
		domain = (domain + 1) % vm_ndomains;
	}

	return (m);
}