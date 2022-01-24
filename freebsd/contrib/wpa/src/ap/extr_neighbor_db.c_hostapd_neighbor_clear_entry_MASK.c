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
struct hostapd_neighbor_entry {scalar_t__ stationary; int /*<<< orphan*/  ssid; int /*<<< orphan*/ * bssid; int /*<<< orphan*/ * civic; int /*<<< orphan*/ * lci; int /*<<< orphan*/ * nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct hostapd_neighbor_entry *nr)
{
	FUNC1(nr->nr);
	nr->nr = NULL;
	FUNC1(nr->lci);
	nr->lci = NULL;
	FUNC1(nr->civic);
	nr->civic = NULL;
	FUNC0(nr->bssid, 0, sizeof(nr->bssid));
	FUNC0(&nr->ssid, 0, sizeof(nr->ssid));
	nr->stationary = 0;
}