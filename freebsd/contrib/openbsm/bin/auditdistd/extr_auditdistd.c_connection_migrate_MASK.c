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
typedef  int /*<<< orphan*/  val ;
struct proto_conn {int dummy; } ;
struct adist_host {scalar_t__ adh_role; char* adh_localaddr; int /*<<< orphan*/  adh_conn; int /*<<< orphan*/  adh_remoteaddr; int /*<<< orphan*/  adh_fingerprint; int /*<<< orphan*/  adh_name; } ;
typedef  scalar_t__ int16_t ;

/* Variables and functions */
 scalar_t__ ADIST_ROLE_SENDER ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int,struct proto_conn**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct proto_conn*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void
FUNC9(struct adist_host *adhost)
{
	struct proto_conn *conn;
	int16_t val = 0;

	FUNC2("[%s] (%s) ", adhost->adh_name,
	    FUNC8(adhost->adh_role));

	FUNC0(adhost->adh_role == ADIST_ROLE_SENDER);

	if (FUNC5(adhost->adh_conn, &val, sizeof(val)) < 0) {
		FUNC1(LOG_WARNING,
		    "Unable to receive connection command");
		return;
	}
	if (FUNC7("tls:fingerprint", adhost->adh_fingerprint) == -1) {
		val = errno;
		FUNC1(LOG_WARNING, "Unable to set fingerprint");
		goto out;
	}
	if (FUNC3(adhost->adh_localaddr[0] != '\0' ?
	    adhost->adh_localaddr : NULL,
	    adhost->adh_remoteaddr, -1, &conn) < 0) {
		val = errno;
		FUNC1(LOG_WARNING, "Unable to connect to %s",
		    adhost->adh_remoteaddr);
		goto out;
	}
	val = 0;
out:
	if (FUNC6(adhost->adh_conn, &val, sizeof(val)) < 0) {
		FUNC1(LOG_WARNING,
		    "Unable to send reply to connection request");
	}
	if (val == 0 && FUNC4(adhost->adh_conn, conn) < 0)
		FUNC1(LOG_WARNING, "Unable to send connection");

	FUNC2("%s", "");
}