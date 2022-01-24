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
typedef  int /*<<< orphan*/  RAND_METHOD ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* default_RAND_meth ; 
 int /*<<< orphan*/  do_rand_init ; 
 int /*<<< orphan*/ * funct_ref ; 
 int /*<<< orphan*/  rand_init ; 
 int /*<<< orphan*/  rand_meth ; 
 int /*<<< orphan*/  rand_meth_lock ; 

const RAND_METHOD *FUNC6(void)
{
    const RAND_METHOD *tmp_meth = NULL;

    if (!FUNC5(&rand_init, do_rand_init))
        return NULL;

    FUNC1(rand_meth_lock);
    if (default_RAND_meth == NULL) {
#ifndef OPENSSL_NO_ENGINE
        ENGINE *e;

        /* If we have an engine that can do RAND, use it. */
        if ((e = FUNC4()) != NULL
                && (tmp_meth = FUNC3(e)) != NULL) {
            funct_ref = e;
            default_RAND_meth = tmp_meth;
        } else {
            FUNC2(e);
            default_RAND_meth = &rand_meth;
        }
#else
        default_RAND_meth = &rand_meth;
#endif
    }
    tmp_meth = default_RAND_meth;
    FUNC0(rand_meth_lock);
    return tmp_meth;
}