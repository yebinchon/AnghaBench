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
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct p2p_srv_bonjour {int /*<<< orphan*/  list; struct wpabuf* resp; struct wpabuf* query; } ;
struct TYPE_2__ {int /*<<< orphan*/  p2p_srv_bonjour; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct p2p_srv_bonjour* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_supplicant*) ; 

int FUNC3(struct wpa_supplicant *wpa_s,
				 struct wpabuf *query, struct wpabuf *resp)
{
	struct p2p_srv_bonjour *bsrv;

	bsrv = FUNC1(sizeof(*bsrv));
	if (bsrv == NULL)
		return -1;
	bsrv->query = query;
	bsrv->resp = resp;
	FUNC0(&wpa_s->global->p2p_srv_bonjour, &bsrv->list);

	FUNC2(wpa_s);
	return 0;
}