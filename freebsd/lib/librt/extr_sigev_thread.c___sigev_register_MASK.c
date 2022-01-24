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
struct sigev_node {int /*<<< orphan*/  sn_id; int /*<<< orphan*/  sn_type; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sigev_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * sigev_hash ; 
 int /*<<< orphan*/  sn_link ; 

int
FUNC2(struct sigev_node *sn)
{
	int chain = FUNC0(sn->sn_type, sn->sn_id);

	FUNC1(&sigev_hash[chain], sn, sn_link);
	return (0);
}