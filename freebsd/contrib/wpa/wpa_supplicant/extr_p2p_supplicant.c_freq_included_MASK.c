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
struct wpa_supplicant {int dummy; } ;
struct p2p_channels {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p2p_channels const*,unsigned int) ; 
 scalar_t__ FUNC1 (struct wpa_supplicant*,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct wpa_supplicant *wpa_s,
			 const struct p2p_channels *channels,
			 unsigned int freq)
{
	if ((channels == NULL || FUNC0(channels, freq)) &&
	    FUNC1(wpa_s, freq))
		return 1;
	return 0;
}