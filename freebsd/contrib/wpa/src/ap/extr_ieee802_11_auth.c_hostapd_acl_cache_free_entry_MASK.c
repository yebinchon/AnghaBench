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
struct hostapd_cached_radius_acl {int /*<<< orphan*/  psk; struct hostapd_cached_radius_acl* radius_cui; struct hostapd_cached_radius_acl* identity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_cached_radius_acl*) ; 

__attribute__((used)) static void FUNC2(struct hostapd_cached_radius_acl *e)
{
	FUNC1(e->identity);
	FUNC1(e->radius_cui);
	FUNC0(e->psk);
	FUNC1(e);
}