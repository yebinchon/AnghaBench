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
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* global; } ;
typedef  int /*<<< orphan*/  q ;
struct TYPE_2__ {int /*<<< orphan*/  p2p; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_supplicant*,struct wpabuf*,int,int const*,int) ; 

__attribute__((used)) static void FUNC2(struct wpa_supplicant *wpa_s,
			    struct wpabuf *resp, u8 srv_trans_id)
{
	/* Query data to add all P2PS advertisements:
	 *  - Service name length: 1
	 *  - Service name: '*'
	 *  - Service Information Request Length: 0
	 */
	const u8 q[] = { 1, (const u8) '*', 0 };

	if (FUNC0(wpa_s->global->p2p))
		FUNC1(wpa_s, resp, srv_trans_id, q, sizeof(q));
}