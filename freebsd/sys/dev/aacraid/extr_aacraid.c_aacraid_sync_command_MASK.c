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
typedef  scalar_t__ u_int32_t ;
typedef  scalar_t__ time_t ;
struct aac_softc {int /*<<< orphan*/  msi_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aac_softc*,int) ; 
 int AAC_DB_SYNC_COMMAND ; 
 int FUNC1 (struct aac_softc*) ; 
 scalar_t__ FUNC2 (struct aac_softc*,int) ; 
 scalar_t__ AAC_MONKER_SYNCFIB ; 
 int /*<<< orphan*/  FUNC3 (struct aac_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct aac_softc*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ AAC_SRB_STS_SUCCESS ; 
 scalar_t__ AAC_SYNC_TIMEOUT ; 
 int EIO ; 
 char* HBA_FLAGS_DBG_ERROR_B ; 
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ; 
 int /*<<< orphan*/  FUNC5 (struct aac_softc*,char*,char*) ; 
 scalar_t__ time_uptime ; 

int
FUNC6(struct aac_softc *sc, u_int32_t command,
		 u_int32_t arg0, u_int32_t arg1, u_int32_t arg2, u_int32_t arg3,
		 u_int32_t *sp, u_int32_t *r1)
{
	time_t then;
	u_int32_t status;

	FUNC5(sc, HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

	/* populate the mailbox */
	FUNC4(sc, command, arg0, arg1, arg2, arg3);

	/* ensure the sync command doorbell flag is cleared */
	if (!sc->msi_enabled)
		FUNC0(sc, AAC_DB_SYNC_COMMAND);

	/* then set it to signal the adapter */
	FUNC3(sc, AAC_DB_SYNC_COMMAND);

	if ((command != AAC_MONKER_SYNCFIB) || (sp == NULL) || (*sp != 0)) {
		/* spin waiting for the command to complete */
		then = time_uptime;
		do {
			if (time_uptime > (then + AAC_SYNC_TIMEOUT)) {
				FUNC5(sc, HBA_FLAGS_DBG_ERROR_B, "timed out");
				return(EIO);
			}
		} while (!(FUNC1(sc) & AAC_DB_SYNC_COMMAND));

		/* clear the completion flag */
		FUNC0(sc, AAC_DB_SYNC_COMMAND);

		/* get the command status */
		status = FUNC2(sc, 0);
		if (sp != NULL)
			*sp = status;

		/* return parameter */
		if (r1 != NULL) 
			*r1 = FUNC2(sc, 1);

		if (status != AAC_SRB_STS_SUCCESS)
			return (-1);
	}
	return(0);
}