#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  welcome ;
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  uintmax_t ;
struct proto_conn {int dummy; } ;
typedef  int /*<<< orphan*/  rnd ;
typedef  int /*<<< orphan*/  resp ;
typedef  unsigned char int16_t ;
typedef  int /*<<< orphan*/  hash ;
struct TYPE_4__ {unsigned char* adc_name; int /*<<< orphan*/  adc_timeout; } ;
struct TYPE_3__ {int adh_version; unsigned char adh_trail_offset; unsigned char adh_trail_name; struct proto_conn* adh_remote; int /*<<< orphan*/  adh_remoteaddr; int /*<<< orphan*/  adh_password; struct proto_conn* adh_conn; } ;

/* Variables and functions */
 int ADIST_VERSION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EX_TEMPFAIL ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char*,int,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* adcfg ; 
 TYPE_1__* adhost ; 
 int FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/  adist_remote_cond ; 
 int /*<<< orphan*/  adist_remote_lock ; 
 int /*<<< orphan*/  adist_remote_mtx ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned char errno ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 unsigned char FUNC8 (unsigned char) ; 
 scalar_t__ FUNC9 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  FUNC17 (struct proto_conn*) ; 
 scalar_t__ FUNC18 (struct proto_conn*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct proto_conn*,int,struct proto_conn**) ; 
 int FUNC20 (struct proto_conn*,...) ; 
 int FUNC21 (struct proto_conn*,...) ; 
 scalar_t__ FUNC22 (struct proto_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (char*,int,char*,int) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC28(void)
{
	unsigned char rnd[32], hash[32], resp[32];
	struct proto_conn *conn;
	char welcome[8];
	int16_t val;

	val = 1;
	if (FUNC21(adhost->adh_conn, &val, sizeof(val)) < 0) {
		FUNC14(EX_TEMPFAIL,
		    "Unable to send connection request to parent");
	}
	if (FUNC20(adhost->adh_conn, &val, sizeof(val)) < 0) {
		FUNC14(EX_TEMPFAIL,
		    "Unable to receive reply to connection request from parent");
	}
	if (val != 0) {
		errno = val;
		FUNC13(LOG_WARNING, "Unable to connect to %s",
		    adhost->adh_remoteaddr);
		return (-1);
	}
	if (FUNC19(adhost->adh_conn, true, &conn) < 0) {
		FUNC14(EX_TEMPFAIL,
		    "Unable to receive connection from parent");
	}
	if (FUNC18(conn, adcfg->adc_timeout) < 0) {
		FUNC13(LOG_WARNING, "Unable to connect to %s",
		    adhost->adh_remoteaddr);
		FUNC17(conn);
		return (-1);
	}
	FUNC12(1, "Connected to %s.", adhost->adh_remoteaddr);
	/* Error in setting timeout is not critical, but why should it fail? */
	if (FUNC22(conn, adcfg->adc_timeout) < 0)
		FUNC13(LOG_WARNING, "Unable to set connection timeout");
	else
		FUNC12(1, "Timeout set to %d.", adcfg->adc_timeout);

	/* Exchange welcome message, which includes version number. */
	(void)FUNC25(welcome, sizeof(welcome), "ADIST%02d", ADIST_VERSION);
	if (FUNC21(conn, welcome, sizeof(welcome)) < 0) {
		FUNC13(LOG_WARNING,
		    "Unable to send welcome message to %s",
		    adhost->adh_remoteaddr);
		FUNC17(conn);
		return (-1);
	}
	FUNC12(1, "Welcome message sent (%s).", welcome);
	FUNC5(welcome, sizeof(welcome));
	if (FUNC20(conn, welcome, sizeof(welcome)) < 0) {
		FUNC13(LOG_WARNING,
		    "Unable to receive welcome message from %s",
		    adhost->adh_remoteaddr);
		FUNC17(conn);
		return (-1);
	}
	if (FUNC27(welcome, "ADIST", 5) != 0 || !FUNC7(welcome[5]) ||
	    !FUNC7(welcome[6]) || welcome[7] != '\0') {
		FUNC16("Invalid welcome message from %s.",
		    adhost->adh_remoteaddr);
		FUNC17(conn);
		return (-1);
	}
	FUNC12(1, "Welcome message received (%s).", welcome);
	/*
	 * Receiver can only reply with version number lower or equal to
	 * the one we sent.
	 */
	adhost->adh_version = FUNC4(welcome + 5);
	if (adhost->adh_version > ADIST_VERSION) {
		FUNC16("Invalid version number from %s (%d received, up to %d supported).",
		    adhost->adh_remoteaddr, adhost->adh_version, ADIST_VERSION);
		FUNC17(conn);
		return (-1);
	}

	FUNC12(1, "Version %d negotiated with %s.", adhost->adh_version,
	    adhost->adh_remoteaddr);

	if (FUNC21(conn, adcfg->adc_name, sizeof(adcfg->adc_name)) == -1) {
		FUNC13(LOG_WARNING, "Unable to send name to %s",
		    adhost->adh_remoteaddr);
		FUNC17(conn);
		return (-1);
	}
	FUNC12(1, "Name (%s) sent.", adcfg->adc_name);

	if (FUNC20(conn, rnd, sizeof(rnd)) == -1) {
		FUNC13(LOG_WARNING, "Unable to receive challenge from %s",
		    adhost->adh_remoteaddr);
		FUNC17(conn);
		return (-1);
	}
	FUNC12(1, "Challenge received.");

	if (FUNC1(FUNC0(), adhost->adh_password,
	    (int)FUNC26(adhost->adh_password), rnd, (int)sizeof(rnd), hash,
	    NULL) == NULL) {
		FUNC16("Unable to generate response.");
		FUNC17(conn);
		return (-1);
	}
	FUNC12(1, "Response generated.");

	if (FUNC21(conn, hash, sizeof(hash)) == -1) {
		FUNC13(LOG_WARNING, "Unable to send response to %s",
		    adhost->adh_remoteaddr);
		FUNC17(conn);
		return (-1);
	}
	FUNC12(1, "Response sent.");

	if (FUNC3(rnd, sizeof(rnd)) == -1) {
		FUNC16("Unable to generate challenge.");
		FUNC17(conn);
		return (-1);
	}
	FUNC12(1, "Challenge generated.");

	if (FUNC21(conn, rnd, sizeof(rnd)) == -1) {
		FUNC13(LOG_WARNING, "Unable to send challenge to %s",
		    adhost->adh_remoteaddr);
		FUNC17(conn);
		return (-1);
	}
	FUNC12(1, "Challenge sent.");

	if (FUNC20(conn, resp, sizeof(resp)) == -1) {
		FUNC13(LOG_WARNING, "Unable to receive response from %s",
		    adhost->adh_remoteaddr);
		FUNC17(conn);
		return (-1);
	}
	FUNC12(1, "Response received.");

	if (FUNC1(FUNC0(), adhost->adh_password,
	    (int)FUNC26(adhost->adh_password), rnd, (int)sizeof(rnd), hash,
	    NULL) == NULL) {
		FUNC16("Unable to generate hash.");
		FUNC17(conn);
		return (-1);
	}
	FUNC12(1, "Hash generated.");

	if (FUNC9(resp, hash, sizeof(hash)) != 0) {
		FUNC16("Invalid response from %s (wrong password?).",
		    adhost->adh_remoteaddr);
		FUNC17(conn);
		return (-1);
	}
	FUNC15("Receiver authenticated.");

	if (FUNC20(conn, &adhost->adh_trail_offset,
	    sizeof(adhost->adh_trail_offset)) == -1) {
		FUNC13(LOG_WARNING,
		    "Unable to receive size of the most recent trail file from %s",
		    adhost->adh_remoteaddr);
		FUNC17(conn);
		return (-1);
	}
	adhost->adh_trail_offset = FUNC8(adhost->adh_trail_offset);
	if (FUNC20(conn, &adhost->adh_trail_name,
	    sizeof(adhost->adh_trail_name)) == -1) {
		FUNC13(LOG_WARNING,
		    "Unable to receive name of the most recent trail file from %s",
		    adhost->adh_remoteaddr);
		FUNC17(conn);
		return (-1);
	}
	FUNC12(1, "Trail name (%s) and offset (%ju) received.",
	    adhost->adh_trail_name, (uintmax_t)adhost->adh_trail_offset);

	FUNC24(&adist_remote_lock);
	FUNC10(&adist_remote_mtx);
	FUNC2(adhost->adh_remote == NULL);
	FUNC2(conn != NULL);
	adhost->adh_remote = conn;
	FUNC11(&adist_remote_mtx);
	FUNC23(&adist_remote_lock);
	FUNC6(&adist_remote_cond);

	return (0);
}