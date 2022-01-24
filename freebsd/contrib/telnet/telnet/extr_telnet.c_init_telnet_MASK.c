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

/* Variables and functions */
 void* FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ISend ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ SYNCHing ; 
 int /*<<< orphan*/  TS_DATA ; 
 int /*<<< orphan*/  _POSIX_VDISABLE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ connected ; 
 scalar_t__ donebinarytoggle ; 
 void* echoc ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* escape ; 
 int flushline ; 
 scalar_t__ localflow ; 
 int /*<<< orphan*/  options ; 
 int restartany ; 
 int /*<<< orphan*/  rlogin ; 
 int /*<<< orphan*/  telrcv_state ; 

void
FUNC5(void)
{
    FUNC4();

    FUNC2();
    FUNC1(options);

    connected = ISend = localflow = donebinarytoggle = 0;
#ifdef	AUTHENTICATION
#ifdef	ENCRYPTION
    auth_encrypt_connect(connected);
#endif
#endif
    restartany = -1;

    SYNCHing = 0;

    /* Don't change NetTrace */

    escape = FUNC0(']');
    rlogin = _POSIX_VDISABLE;
#ifdef	KLUDGELINEMODE
    echoc = CONTROL('E');
#endif

    flushline = 1;
    telrcv_state = TS_DATA;
}