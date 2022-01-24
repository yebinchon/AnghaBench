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
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(SSL *s, BIO *rbio, BIO *wbio)
{
    /*
     * For historical reasons, this function has many different cases in
     * ownership handling.
     */

    /* If nothing has changed, do nothing */
    if (rbio == FUNC1(s) && wbio == FUNC2(s))
        return;

    /*
     * If the two arguments are equal then one fewer reference is granted by the
     * caller than we want to take
     */
    if (rbio != NULL && rbio == wbio)
        FUNC0(rbio);

    /*
     * If only the wbio is changed only adopt one reference.
     */
    if (rbio == FUNC1(s)) {
        FUNC4(s, wbio);
        return;
    }
    /*
     * There is an asymmetry here for historical reasons. If only the rbio is
     * changed AND the rbio and wbio were originally different, then we only
     * adopt one reference.
     */
    if (wbio == FUNC2(s) && FUNC1(s) != FUNC2(s)) {
        FUNC3(s, rbio);
        return;
    }

    /* Otherwise, adopt both references. */
    FUNC3(s, rbio);
    FUNC4(s, wbio);
}