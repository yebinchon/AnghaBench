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
 int MODE_ECHO ; 
 int MODE_EDIT ; 
 int MODE_FORCE ; 
 int /*<<< orphan*/  TELOPT_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  encrypt_output ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(int force)
{
#ifdef	ENCRYPTION
    static int enc_passwd = 0;
#endif	/* ENCRYPTION */
    int newmode;

    newmode = FUNC3()|(force?MODE_FORCE:0);

    FUNC0(newmode);

#ifdef  ENCRYPTION
    if ((newmode & (MODE_ECHO|MODE_EDIT)) == MODE_EDIT) {
	if (my_want_state_is_will(TELOPT_ENCRYPT)
				&& (enc_passwd == 0) && !encrypt_output) {
	    encrypt_request_start(0, 0);
	    enc_passwd = 1;
	}
    } else {
	if (enc_passwd) {
	    encrypt_request_end();
	    enc_passwd = 0;
	}
    }
#endif	/* ENCRYPTION */

}