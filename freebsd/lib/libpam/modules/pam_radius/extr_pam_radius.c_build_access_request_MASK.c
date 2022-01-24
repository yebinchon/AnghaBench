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
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct rad_handle {int dummy; } ;
struct addrinfo {scalar_t__ ai_family; scalar_t__ ai_addr; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  LOG_CRIT ; 
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  RAD_ACCESS_REQUEST ; 
 int /*<<< orphan*/  RAD_AUTHENTICATE_ONLY ; 
 int /*<<< orphan*/  RAD_CALLING_STATION_ID ; 
 int /*<<< orphan*/  RAD_NAS_IDENTIFIER ; 
 int /*<<< orphan*/  RAD_NAS_IP_ADDRESS ; 
 int /*<<< orphan*/  RAD_SERVICE_TYPE ; 
 int /*<<< orphan*/  RAD_STATE ; 
 int /*<<< orphan*/  RAD_USER_NAME ; 
 int /*<<< orphan*/  RAD_USER_PASSWORD ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct rad_handle*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rad_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rad_handle*,int /*<<< orphan*/ ,void const*,size_t) ; 
 int FUNC7 (struct rad_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct rad_handle*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct rad_handle*) ; 
 scalar_t__ FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct rad_handle *radh, const char *user,
    const char *pass, const char *nas_id, const char *nas_ipaddr,
    const char *rhost, const void *state, size_t state_len)
{
	int error;
	char host[MAXHOSTNAMELEN];
	struct sockaddr_in *haddr;
	struct addrinfo hints;
	struct addrinfo *res;

	if (FUNC4(radh, RAD_ACCESS_REQUEST) == -1) {
		FUNC11(LOG_CRIT, "rad_create_request: %s", FUNC9(radh));
		return (-1);
	}
	if (nas_id == NULL ||
	    (nas_ipaddr != NULL && FUNC10(nas_ipaddr) == 0)) {
		if (FUNC2(host, sizeof host) != -1) {
			if (nas_id == NULL)
				nas_id = host;
			if (nas_ipaddr != NULL && FUNC10(nas_ipaddr) == 0)
				nas_ipaddr = host;
		}
	}
	if ((user != NULL &&
	    FUNC8(radh, RAD_USER_NAME, user) == -1) ||
	    (pass != NULL &&
	    FUNC8(radh, RAD_USER_PASSWORD, pass) == -1) ||
	    (nas_id != NULL &&
	    FUNC8(radh, RAD_NAS_IDENTIFIER, nas_id) == -1)) {
		FUNC11(LOG_CRIT, "rad_put_string: %s", FUNC9(radh));
		return (-1);
	}
	if (nas_ipaddr != NULL) {
		FUNC3(&hints, 0, sizeof(hints));
		hints.ai_family = AF_INET;
		if (FUNC1(nas_ipaddr, NULL, &hints, &res) == 0 &&
		    res != NULL && res->ai_family == AF_INET) {
			haddr = (struct sockaddr_in *)res->ai_addr;
			error = FUNC5(radh, RAD_NAS_IP_ADDRESS,
			    haddr->sin_addr);
			FUNC0(res);
			if (error == -1) {
				FUNC11(LOG_CRIT, "rad_put_addr: %s",
				    FUNC9(radh));
				return (-1);
			}
		}
	}
	if (rhost != NULL &&
	    FUNC8(radh, RAD_CALLING_STATION_ID, rhost) == -1) {
		FUNC11(LOG_CRIT, "rad_put_string: %s", FUNC9(radh));
		return (-1);
	}
	if (state != NULL &&
	    FUNC6(radh, RAD_STATE, state, state_len) == -1) {
		FUNC11(LOG_CRIT, "rad_put_attr: %s", FUNC9(radh));
		return (-1);
	}
	if (FUNC7(radh, RAD_SERVICE_TYPE, RAD_AUTHENTICATE_ONLY) == -1) {
		FUNC11(LOG_CRIT, "rad_put_int: %s", FUNC9(radh));
		return (-1);
	}
	return (0);
}