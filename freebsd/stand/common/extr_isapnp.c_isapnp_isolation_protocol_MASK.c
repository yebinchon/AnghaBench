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
typedef  int /*<<< orphan*/  uint8_t ;
struct pnpinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_CONTROL ; 
 int /*<<< orphan*/  SERIAL_ISOLATION ; 
 int /*<<< orphan*/  SET_CSN ; 
 int /*<<< orphan*/  SET_RD_DATA ; 
 int /*<<< orphan*/  WAKE ; 
 int /*<<< orphan*/  _PNP_ADDRESS ; 
 int _PNP_ID_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int isapnp_readport ; 
 scalar_t__ FUNC2 (struct pnpinfo*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pnpinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pnpinfo*) ; 
 struct pnpinfo* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct pnpinfo*) ; 

__attribute__((used)) static int
FUNC11(void)
{
    int			csn;
    struct pnpinfo	*pi;
    uint8_t		cardid[_PNP_ID_LEN];
    int			ndevs;

    FUNC3();
    ndevs = 0;
    
    FUNC4(CONFIG_CONTROL, 0x04);	/* Reset CSN for All Cards */

    for (csn = 1; ; csn++) {
	/* Wake up cards without a CSN (ie. all of them) */
	FUNC4(WAKE, 0);
	FUNC4(SET_RD_DATA, (isapnp_readport >> 2));
	FUNC5(_PNP_ADDRESS, SERIAL_ISOLATION);
	FUNC0(1000);	/* Delay 1 msec */

	if (FUNC1(cardid)) {
	    FUNC4(SET_CSN, csn);
	    pi = FUNC8();
	    ndevs++;
	    FUNC6(pi, FUNC9(cardid));
	    /* scan the card obtaining all the identifiers it holds */
	    if (FUNC2(pi)) {
		FUNC10(pi);	/* error getting data, ignore */
	    } else {
		FUNC7(pi);
	    }
	} else {
	    break;
	}
    }
    /* Move all cards to wait-for-key state */
    while (--csn > 0) {
	FUNC3();
	FUNC4(WAKE, csn);
	FUNC4(CONFIG_CONTROL, 0x02);
	FUNC0(1000); /* XXX is it really necessary ? */
	csn--;
    }
    return(ndevs);
}