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
struct eap_sim_db_data {int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int ECONNREFUSED ; 
 int EDESTADDRREQ ; 
 int EINVAL ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sim_db_data*) ; 
 scalar_t__ FUNC1 (struct eap_sim_db_data*) ; 
 int errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC5(struct eap_sim_db_data *data, const char *msg,
			   size_t len)
{
	int _errno = 0;

	if (FUNC2(data->sock, msg, len, 0) < 0) {
		_errno = errno;
		FUNC4(MSG_INFO, "send[EAP-SIM DB UNIX]: %s",
			   FUNC3(errno));
	}

	if (_errno == ENOTCONN || _errno == EDESTADDRREQ || _errno == EINVAL ||
	    _errno == ECONNREFUSED) {
		/* Try to reconnect */
		FUNC0(data);
		if (FUNC1(data) < 0)
			return -1;
		FUNC4(MSG_DEBUG, "EAP-SIM DB: Reconnected to the "
			   "external server");
		if (FUNC2(data->sock, msg, len, 0) < 0) {
			FUNC4(MSG_INFO, "send[EAP-SIM DB UNIX]: %s",
				   FUNC3(errno));
			return -1;
		}
	}

	return 0;
}