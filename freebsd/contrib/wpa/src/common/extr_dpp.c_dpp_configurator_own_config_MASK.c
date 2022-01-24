#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wpabuf {int dummy; } ;
struct dpp_authentication {int /*<<< orphan*/ * peer_protocol_key; TYPE_1__* conf; int /*<<< orphan*/ * own_protocol_key; TYPE_2__* curve; } ;
struct TYPE_6__ {char const* name; } ;
struct TYPE_5__ {int /*<<< orphan*/  csign; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 struct wpabuf* FUNC0 (struct dpp_authentication*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dpp_authentication*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dpp_authentication*) ; 
 TYPE_2__* dpp_curves ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (char const*) ; 
 int FUNC5 (struct dpp_authentication*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*) ; 

int FUNC10(struct dpp_authentication *auth,
				const char *curve, int ap)
{
	struct wpabuf *conf_obj;
	int ret = -1;

	if (!auth->conf) {
		FUNC6(MSG_DEBUG, "DPP: No configurator specified");
		return -1;
	}

	if (!curve) {
		auth->curve = &dpp_curves[0];
	} else {
		auth->curve = FUNC4(curve);
		if (!auth->curve) {
			FUNC6(MSG_INFO, "DPP: Unsupported curve: %s",
				   curve);
			return -1;
		}
	}
	FUNC6(MSG_DEBUG,
		   "DPP: Building own configuration/connector with curve %s",
		   auth->curve->name);

	auth->own_protocol_key = FUNC3(auth->curve);
	if (!auth->own_protocol_key)
		return -1;
	FUNC2(auth);
	auth->peer_protocol_key = auth->own_protocol_key;
	FUNC1(auth, auth->conf->csign);

	conf_obj = FUNC0(auth, ap);
	if (!conf_obj)
		goto fail;
	ret = FUNC5(auth, FUNC8(conf_obj),
				 FUNC9(conf_obj));
fail:
	FUNC7(conf_obj);
	auth->peer_protocol_key = NULL;
	return ret;
}