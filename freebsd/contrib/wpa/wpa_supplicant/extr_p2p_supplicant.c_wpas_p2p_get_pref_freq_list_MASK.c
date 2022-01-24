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

/* Variables and functions */
 int /*<<< orphan*/  WPA_IF_P2P_CLIENT ; 
 int /*<<< orphan*/  WPA_IF_P2P_GO ; 
 int FUNC0 (struct wpa_supplicant*,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 

__attribute__((used)) static int FUNC1(void *ctx, int go,
				       unsigned int *len,
				       unsigned int *freq_list)
{
	struct wpa_supplicant *wpa_s = ctx;

	return FUNC0(wpa_s, go ? WPA_IF_P2P_GO :
					  WPA_IF_P2P_CLIENT, len, freq_list);
}