#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * priv_key; int /*<<< orphan*/ * pub_key; } ;
typedef  TYPE_1__ DH ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

int FUNC1(DH *dh, BIGNUM *pub_key, BIGNUM *priv_key)
{
    if (pub_key != NULL) {
        FUNC0(dh->pub_key);
        dh->pub_key = pub_key;
    }
    if (priv_key != NULL) {
        FUNC0(dh->priv_key);
        dh->priv_key = priv_key;
    }

    return 1;
}