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
struct sigaction {int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  ill_act ;
struct TYPE_2__ {int* stfle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ OPENSSL_s390xcap_P ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S390X_VX ; 
 int /*<<< orphan*/  S390X_VXD ; 
 int /*<<< orphan*/  S390X_VXE ; 
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  ill_handler ; 
 int /*<<< orphan*/  ill_jmp ; 
 int /*<<< orphan*/  FUNC3 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 

void FUNC9(void)
{
    sigset_t oset;
    struct sigaction ill_act, oact_ill, oact_fpe;

    if (OPENSSL_s390xcap_P.stfle[0])
        return;

    /* set a bit that will not be tested later */
    OPENSSL_s390xcap_P.stfle[0] |= FUNC2(0);

    FUNC3(&ill_act, 0, sizeof(ill_act));
    ill_act.sa_handler = ill_handler;
    FUNC6(&ill_act.sa_mask);
    FUNC5(&ill_act.sa_mask, SIGILL);
    FUNC5(&ill_act.sa_mask, SIGFPE);
    FUNC5(&ill_act.sa_mask, SIGTRAP);
    FUNC7(SIG_SETMASK, &ill_act.sa_mask, &oset);
    FUNC4(SIGILL, &ill_act, &oact_ill);
    FUNC4(SIGFPE, &ill_act, &oact_fpe);

    /* protection against missing store-facility-list-extended */
    if (FUNC8(ill_jmp, 1) == 0)
        FUNC0();

    /* protection against disabled vector facility */
    if ((OPENSSL_s390xcap_P.stfle[2] & FUNC2(S390X_VX))
        && (FUNC8(ill_jmp, 1) == 0)) {
        FUNC1();
    } else {
        OPENSSL_s390xcap_P.stfle[2] &= ~(FUNC2(S390X_VX)
                                         | FUNC2(S390X_VXD)
                                         | FUNC2(S390X_VXE));
    }

    FUNC4(SIGFPE, &oact_fpe, NULL);
    FUNC4(SIGILL, &oact_ill, NULL);
    FUNC7(SIG_SETMASK, &oset, NULL);
}