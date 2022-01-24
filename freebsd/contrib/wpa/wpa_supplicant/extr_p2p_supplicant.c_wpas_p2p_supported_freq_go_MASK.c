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
struct wpa_supplicant {TYPE_1__* global; } ;
struct p2p_channels {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  p2p; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct wpa_supplicant*,struct p2p_channels const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC3(struct wpa_supplicant *wpa_s,
				      const struct p2p_channels *channels,
				      int freq)
{
	if (!FUNC2(wpa_s->global, freq) &&
	    FUNC1(wpa_s->global->p2p, freq) &&
	    FUNC0(wpa_s, channels, freq))
		return 1;
	return 0;
}