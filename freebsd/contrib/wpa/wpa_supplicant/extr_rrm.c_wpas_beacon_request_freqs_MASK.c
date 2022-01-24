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
struct TYPE_2__ {int /*<<< orphan*/  num_modes; int /*<<< orphan*/  modes; } ;
struct wpa_supplicant {TYPE_1__ hw; int /*<<< orphan*/  current_bss; } ;
struct oper_class_map {int /*<<< orphan*/  mode; } ;
struct hostapd_hw_modes {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  WLAN_EID_COUNTRY ; 
 struct hostapd_hw_modes* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct oper_class_map* FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int**,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int* FUNC7 (struct oper_class_map const*,struct hostapd_hw_modes*,int,int*,int) ; 
 int* FUNC8 (struct wpa_supplicant*,int,char const*,int const*,size_t) ; 
 int* FUNC9 (struct oper_class_map const*,struct hostapd_hw_modes*,int) ; 

__attribute__((used)) static int * FUNC10(struct wpa_supplicant *wpa_s,
				       u8 op_class, u8 chan, int active,
				       const u8 *subelems, size_t len)
{
	int *freqs = NULL, *ext_freqs = NULL;
	struct hostapd_hw_modes *mode;
	const char *country = NULL;
	const struct oper_class_map *op;
	const u8 *elem;

	if (!wpa_s->current_bss)
		return NULL;
	elem = FUNC5(wpa_s->current_bss, WLAN_EID_COUNTRY);
	if (elem && elem[1] >= 2)
		country = (const char *) (elem + 2);

	op = FUNC1(country, op_class);
	if (!op) {
		FUNC6(MSG_DEBUG,
			   "Beacon request: invalid operating class %d",
			   op_class);
		return NULL;
	}

	mode = FUNC0(wpa_s->hw.modes, wpa_s->hw.num_modes, op->mode);
	if (!mode)
		return NULL;

	switch (chan) {
	case 0:
		freqs = FUNC9(op, mode, active);
		if (!freqs)
			return NULL;
		break;
	case 255:
		/* freqs will be added from AP channel subelements */
		break;
	default:
		freqs = FUNC7(op, mode, active, &chan, 1);
		if (!freqs)
			return NULL;
		break;
	}

	ext_freqs = FUNC8(wpa_s, active, country, subelems,
					      len);
	if (ext_freqs) {
		FUNC2(&freqs, ext_freqs);
		FUNC4(ext_freqs);
		FUNC3(freqs);
	}

	return freqs;
}