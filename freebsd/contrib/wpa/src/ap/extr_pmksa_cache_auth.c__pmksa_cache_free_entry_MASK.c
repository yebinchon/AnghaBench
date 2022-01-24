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
struct rsn_pmksa_cache_entry {int /*<<< orphan*/  radius_class; int /*<<< orphan*/  cui; int /*<<< orphan*/  identity; int /*<<< orphan*/  vlan_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsn_pmksa_cache_entry*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct rsn_pmksa_cache_entry *entry)
{
	FUNC1(entry->vlan_desc);
	FUNC1(entry->identity);
	FUNC3(entry->cui);
#ifndef CONFIG_NO_RADIUS
	FUNC2(&entry->radius_class);
#endif /* CONFIG_NO_RADIUS */
	FUNC0(entry, sizeof(*entry));
}