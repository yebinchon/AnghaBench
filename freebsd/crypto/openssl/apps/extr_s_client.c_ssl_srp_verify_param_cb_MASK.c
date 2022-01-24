#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int amp; scalar_t__ debug; scalar_t__ msg; } ;
typedef  int /*<<< orphan*/  SSL ;
typedef  TYPE_1__ SRP_ARG ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ BN_BITS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bio_err ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(SSL *s, void *arg)
{
    SRP_ARG *srp_arg = (SRP_ARG *)arg;
    BIGNUM *N = NULL, *g = NULL;

    if (((N = FUNC4(s)) == NULL) || ((g = FUNC5(s)) == NULL))
        return 0;
    if (srp_arg->debug || srp_arg->msg || srp_arg->amp == 1) {
        FUNC0(bio_err, "SRP parameters:\n");
        FUNC0(bio_err, "\tN=");
        FUNC2(bio_err, N);
        FUNC0(bio_err, "\n\tg=");
        FUNC2(bio_err, g);
        FUNC0(bio_err, "\n");
    }

    if (FUNC3(g, N))
        return 1;

    if (srp_arg->amp == 1) {
        if (srp_arg->debug)
            FUNC0(bio_err,
                       "SRP param N and g are not known params, going to check deeper.\n");

        /*
         * The srp_moregroups is a real debugging feature. Implementors
         * should rather add the value to the known ones. The minimal size
         * has already been tested.
         */
        if (FUNC1(g) <= BN_BITS && FUNC6(N, g))
            return 1;
    }
    FUNC0(bio_err, "SRP param N and g rejected.\n");
    return 0;
}