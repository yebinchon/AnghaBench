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
struct wpa_supplicant {int num_multichan_concurrent; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (struct wpa_supplicant*,int*,int) ; 
 int* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(struct wpa_supplicant *wpa_s)
{
	int *freqs;
	int num, unused;

	freqs = FUNC1(wpa_s->num_multichan_concurrent, sizeof(int));
	if (!freqs)
		return -1;

	num = FUNC0(wpa_s, freqs,
				     wpa_s->num_multichan_concurrent);
	FUNC2(freqs);

	unused = wpa_s->num_multichan_concurrent - num;
	FUNC3(wpa_s, MSG_DEBUG, "P2P: num_unused_channels: %d", unused);
	return unused;
}