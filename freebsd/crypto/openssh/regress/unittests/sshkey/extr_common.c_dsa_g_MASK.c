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
struct sshkey {struct sshkey* dsa; } ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sshkey*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sshkey*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 

const BIGNUM *
FUNC2(struct sshkey *k)
{
	const BIGNUM *g = NULL;

	FUNC0(k, NULL);
	FUNC0(k->dsa, NULL);
	FUNC1(k->dsa, NULL, NULL, &g);
	return g;
}