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
struct hostapd_channel_data {int const chan; } ;

/* Variables and functions */
 unsigned int FUNC0 (int const*) ; 

__attribute__((used)) static int FUNC1(const struct hostapd_channel_data *chan)
{
	const int allowed[] = { 36, 44, 52, 60, 100, 108, 116, 124, 132, 149,
				157, 184, 192 };
	unsigned int i;

	for (i = 0; i < FUNC0(allowed); i++)
		if (chan->chan == allowed[i])
			return 1;

	return 0;
}