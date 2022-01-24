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
struct sae_data {int /*<<< orphan*/  peer_commit_scalar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sae_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sae_data*) ; 

void FUNC3(struct sae_data *sae)
{
	if (sae == NULL)
		return;
	FUNC2(sae);
	FUNC0(sae->peer_commit_scalar, 0);
	FUNC1(sae, 0, sizeof(*sae));
}