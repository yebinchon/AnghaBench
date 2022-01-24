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
struct wpa_used_freq_data {int freq; } ;
struct wpa_supplicant {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct wpa_supplicant*,struct wpa_used_freq_data*,unsigned int) ; 
 struct wpa_used_freq_data* FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_used_freq_data*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct wpa_supplicant *wpa_s,
			   int *freq_array, unsigned int len)
{
	struct wpa_used_freq_data *freqs_data;
	int num, i;

	FUNC3(freq_array, 0, sizeof(int) * len);

	freqs_data = FUNC1(len, sizeof(struct wpa_used_freq_data));
	if (!freqs_data)
		return -1;

	num = FUNC0(wpa_s, freqs_data, len);
	for (i = 0; i < num; i++)
		freq_array[i] = freqs_data[i].freq;

	FUNC2(freqs_data);

	return num;
}