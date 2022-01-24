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
typedef  int /*<<< orphan*/  u8 ;
typedef  uintptr_t u64 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {int /*<<< orphan*/ * p2p; scalar_t__ p2p_disabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,struct wpabuf const*) ; 

u64 FUNC1(struct wpa_supplicant *wpa_s, const u8 *dst,
			const struct wpabuf *tlvs)
{
	if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == NULL)
		return 0;
	return (uintptr_t) FUNC0(wpa_s->global->p2p, dst, tlvs);
}