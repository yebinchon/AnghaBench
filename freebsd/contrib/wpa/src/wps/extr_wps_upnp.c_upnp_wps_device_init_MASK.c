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
struct wps_context {int dummy; } ;
struct upnp_wps_device_sm {int /*<<< orphan*/  interfaces; int /*<<< orphan*/  subscriptions; int /*<<< orphan*/  msearch_replies; } ;
struct upnp_wps_device_interface {int /*<<< orphan*/  list; struct upnp_wps_device_interface* ap_pin; void* priv; struct wps_context* wps; struct upnp_wps_device_interface* ctx; int /*<<< orphan*/  peers; } ;
struct upnp_wps_device_ctx {int /*<<< orphan*/  list; struct upnp_wps_device_ctx* ap_pin; void* priv; struct wps_context* wps; struct upnp_wps_device_ctx* ctx; int /*<<< orphan*/  peers; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct upnp_wps_device_interface*) ; 
 void* FUNC3 (int) ; 
 struct upnp_wps_device_sm* shared_upnp_device ; 
 int /*<<< orphan*/  FUNC4 (struct upnp_wps_device_sm*,void*) ; 
 scalar_t__ FUNC5 (struct upnp_wps_device_sm*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

struct upnp_wps_device_sm *
FUNC7(struct upnp_wps_device_ctx *ctx, struct wps_context *wps,
		     void *priv, char *net_if)
{
	struct upnp_wps_device_sm *sm;
	struct upnp_wps_device_interface *iface;
	int start = 0;

	iface = FUNC3(sizeof(*iface));
	if (iface == NULL) {
		FUNC2(ctx->ap_pin);
		FUNC2(ctx);
		return NULL;
	}
	FUNC6(MSG_DEBUG, "WPS UPnP: Init interface instance %p", iface);

	FUNC1(&iface->peers);
	iface->ctx = ctx;
	iface->wps = wps;
	iface->priv = priv;

	if (shared_upnp_device) {
		FUNC6(MSG_DEBUG, "WPS UPnP: Share existing device "
			   "context");
		sm = shared_upnp_device;
	} else {
		FUNC6(MSG_DEBUG, "WPS UPnP: Initialize device context");
		sm = FUNC3(sizeof(*sm));
		if (!sm) {
			FUNC6(MSG_ERROR, "WPS UPnP: upnp_wps_device_init "
				   "failed");
			FUNC2(iface);
			FUNC2(ctx->ap_pin);
			FUNC2(ctx);
			return NULL;
		}
		shared_upnp_device = sm;

		FUNC1(&sm->msearch_replies);
		FUNC1(&sm->subscriptions);
		FUNC1(&sm->interfaces);
		start = 1;
	}

	FUNC0(&sm->interfaces, &iface->list);

	if (start && FUNC5(sm, net_if)) {
		FUNC4(sm, priv);
		return NULL;
	}


	return sm;
}