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
typedef  int /*<<< orphan*/  DH ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

DH *
FUNC5(const char *gen, const char *modulus)
{
	DH *dh;
	BIGNUM *dh_p = NULL, *dh_g = NULL;

	if ((dh = FUNC3()) == NULL)
		return NULL;
	if (FUNC1(&dh_p, modulus) == 0 ||
	    FUNC1(&dh_g, gen) == 0)
		goto fail;
	if (!FUNC4(dh, dh_p, NULL, dh_g))
		goto fail;
	return dh;
 fail:
	FUNC2(dh);
	FUNC0(dh_p);
	FUNC0(dh_g);
	return NULL;
}