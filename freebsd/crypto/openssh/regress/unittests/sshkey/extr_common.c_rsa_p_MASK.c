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
struct sshkey {struct sshkey* rsa; } ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sshkey*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sshkey*,int /*<<< orphan*/  const**,int /*<<< orphan*/ *) ; 

const BIGNUM *
FUNC2(struct sshkey *k)
{
	const BIGNUM *p = NULL;

	FUNC0(k, NULL);
	FUNC0(k->rsa, NULL);
	FUNC1(k->rsa, &p, NULL);
	return p;
}