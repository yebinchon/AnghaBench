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
struct wpa_supplicant {int /*<<< orphan*/ ** vendor_elem; } ;

/* Variables and functions */
 int NUM_VENDOR_ELEM_FRAMES ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct wpa_supplicant* FUNC4 (struct wpa_supplicant*,int) ; 

__attribute__((used)) static int FUNC5(struct wpa_supplicant *wpa_s, char *cmd,
				     char *buf, size_t buflen)
{
	int frame = FUNC0(cmd);

	if (frame < 0 || frame >= NUM_VENDOR_ELEM_FRAMES)
		return -1;
	wpa_s = FUNC4(wpa_s, frame);

	if (wpa_s->vendor_elem[frame] == NULL)
		return 0;

	return FUNC1(buf, buflen,
				FUNC2(wpa_s->vendor_elem[frame]),
				FUNC3(wpa_s->vendor_elem[frame]));
}