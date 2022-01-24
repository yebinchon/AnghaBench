#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rsn_pmksa_cache {TYPE_1__* pmksa; } ;
struct os_reltime {int sec; } ;
struct TYPE_2__ {int expiration; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct rsn_pmksa_cache*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rsn_pmksa_cache*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct os_reltime*) ; 
 int /*<<< orphan*/  pmksa_cache_expire ; 

__attribute__((used)) static void FUNC3(struct rsn_pmksa_cache *pmksa)
{
	int sec;
	struct os_reltime now;

	FUNC0(pmksa_cache_expire, pmksa, NULL);
	if (pmksa->pmksa == NULL)
		return;
	FUNC2(&now);
	sec = pmksa->pmksa->expiration - now.sec;
	if (sec < 0)
		sec = 0;
	FUNC1(sec + 1, 0, pmksa_cache_expire, pmksa, NULL);
}