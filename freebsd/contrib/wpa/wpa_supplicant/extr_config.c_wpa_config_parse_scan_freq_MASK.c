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
struct wpa_ssid {int* scan_freq; } ;
struct parse_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(const struct parse_data *data,
				      struct wpa_ssid *ssid, int line,
				      const char *value)
{
	int *freqs;

	freqs = FUNC1(value);
	if (freqs == NULL)
		return -1;
	if (freqs[0] == 0) {
		FUNC0(freqs);
		freqs = NULL;
	}
	FUNC0(ssid->scan_freq);
	ssid->scan_freq = freqs;

	return 0;
}