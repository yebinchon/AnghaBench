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
struct wpa_priv_interface {int fd; char const* driver_name; char const* ifname; char const* sock_name; TYPE_1__* driver; void* ctx; } ;
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int S_IRWXG ; 
 int S_IRWXO ; 
 int S_IRWXU ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 scalar_t__ FUNC1 (char const*,int) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 char const* FUNC3 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct wpa_priv_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 char const* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,size_t,char*,char const*,char const*) ; 
 char* FUNC8 (char const*,char) ; 
 scalar_t__ FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 char const* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,int) ; 
 int FUNC12 (char const*) ; 
 struct wpa_priv_interface* FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char const*) ; 
 TYPE_1__** wpa_drivers ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC18 (struct wpa_priv_interface*) ; 
 int /*<<< orphan*/  wpa_priv_receive ; 

__attribute__((used)) static struct wpa_priv_interface *
FUNC19(void *ctx, const char *dir, const char *params)
{
	struct wpa_priv_interface *iface;
	char *pos;
	size_t len;
	struct sockaddr_un addr;
	int i;

	pos = FUNC8(params, ':');
	if (pos == NULL)
		return NULL;

	iface = FUNC13(sizeof(*iface));
	if (iface == NULL)
		return NULL;
	iface->fd = -1;
	iface->ctx = ctx;

	len = pos - params;
	iface->driver_name = FUNC3(params, len);
	if (iface->driver_name == NULL) {
		FUNC18(iface);
		return NULL;
	}

	for (i = 0; wpa_drivers[i]; i++) {
		if (FUNC9(iface->driver_name,
			      wpa_drivers[i]->name) == 0) {
			iface->driver = wpa_drivers[i];
			break;
		}
	}
	if (iface->driver == NULL) {
		FUNC17(MSG_ERROR, "Unsupported driver '%s'",
			   iface->driver_name);
		FUNC18(iface);
		return NULL;
	}

	pos++;
	iface->ifname = FUNC10(pos);
	if (iface->ifname == NULL) {
		FUNC18(iface);
		return NULL;
	}

	len = FUNC12(dir) + 1 + FUNC12(iface->ifname);
	iface->sock_name = FUNC5(len + 1);
	if (iface->sock_name == NULL) {
		FUNC18(iface);
		return NULL;
	}

	FUNC7(iface->sock_name, len + 1, "%s/%s", dir, iface->ifname);
	if (FUNC12(iface->sock_name) >= sizeof(addr.sun_path)) {
		FUNC18(iface);
		return NULL;
	}

	iface->fd = FUNC14(PF_UNIX, SOCK_DGRAM, 0);
	if (iface->fd < 0) {
		FUNC17(MSG_ERROR, "socket(PF_UNIX): %s", FUNC15(errno));
		FUNC18(iface);
		return NULL;
	}

	FUNC6(&addr, 0, sizeof(addr));
	addr.sun_family = AF_UNIX;
	FUNC11(addr.sun_path, iface->sock_name, sizeof(addr.sun_path));

	if (FUNC0(iface->fd, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
		FUNC17(MSG_DEBUG, "bind(PF_UNIX) failed: %s",
			   FUNC15(errno));
		if (FUNC2(iface->fd, (struct sockaddr *) &addr,
			    sizeof(addr)) < 0) {
			FUNC17(MSG_DEBUG, "Socket exists, but does not "
				   "allow connections - assuming it was "
				   "leftover from forced program termination");
			if (FUNC16(iface->sock_name) < 0) {
				FUNC17(MSG_ERROR,
					   "Could not unlink existing ctrl_iface socket '%s': %s",
					   iface->sock_name, FUNC15(errno));
				goto fail;
			}
			if (FUNC0(iface->fd, (struct sockaddr *) &addr,
				 sizeof(addr)) < 0) {
				FUNC17(MSG_ERROR,
					   "wpa-priv-iface-init: bind(PF_UNIX): %s",
					   FUNC15(errno));
				goto fail;
			}
			FUNC17(MSG_DEBUG, "Successfully replaced leftover "
				   "socket '%s'", iface->sock_name);
		} else {
			FUNC17(MSG_INFO, "Socket exists and seems to be "
				   "in use - cannot override it");
			FUNC17(MSG_INFO, "Delete '%s' manually if it is "
				   "not used anymore", iface->sock_name);
			goto fail;
		}
	}

	if (FUNC1(iface->sock_name, S_IRWXU | S_IRWXG | S_IRWXO) < 0) {
		FUNC17(MSG_ERROR, "chmod: %s", FUNC15(errno));
		goto fail;
	}

	FUNC4(iface->fd, wpa_priv_receive, iface, NULL);

	return iface;

fail:
	FUNC18(iface);
	return NULL;
}