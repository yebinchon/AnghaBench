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
struct crypto_rsa_key {int /*<<< orphan*/  iqmp; int /*<<< orphan*/  dmq1; int /*<<< orphan*/  dmp1; int /*<<< orphan*/  q; int /*<<< orphan*/  p; int /*<<< orphan*/  d; int /*<<< orphan*/  e; int /*<<< orphan*/  n; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_rsa_key*) ; 

void FUNC2(struct crypto_rsa_key *key)
{
	if (key) {
		FUNC0(key->n);
		FUNC0(key->e);
		FUNC0(key->d);
		FUNC0(key->p);
		FUNC0(key->q);
		FUNC0(key->dmp1);
		FUNC0(key->dmq1);
		FUNC0(key->iqmp);
		FUNC1(key);
	}
}