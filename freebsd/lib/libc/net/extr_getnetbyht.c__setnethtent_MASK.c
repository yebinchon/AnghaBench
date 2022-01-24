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
struct netent_data {int stayopen; int /*<<< orphan*/ * netf; } ;

/* Variables and functions */
 int /*<<< orphan*/  _PATH_NETWORKS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(int f, struct netent_data *ned)
{

	if (ned->netf == NULL)
		ned->netf = FUNC0(_PATH_NETWORKS, "re");
	else
		FUNC1(ned->netf);
	ned->stayopen |= f;
}