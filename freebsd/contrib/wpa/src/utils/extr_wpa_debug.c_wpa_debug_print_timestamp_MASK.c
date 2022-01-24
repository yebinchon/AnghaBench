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
struct os_time {scalar_t__ usec; scalar_t__ sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*,long,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct os_time*) ; 
 scalar_t__ out_file ; 
 int /*<<< orphan*/  FUNC2 (char*,long,unsigned int) ; 
 int /*<<< orphan*/  wpa_debug_timestamp ; 

void FUNC3(void)
{
#ifndef CONFIG_ANDROID_LOG
	struct os_time tv;

	if (!wpa_debug_timestamp)
		return;

	FUNC1(&tv);
#ifdef CONFIG_DEBUG_FILE
	if (out_file) {
		fprintf(out_file, "%ld.%06u: ", (long) tv.sec,
			(unsigned int) tv.usec);
	} else
#endif /* CONFIG_DEBUG_FILE */
	FUNC2("%ld.%06u: ", (long) tv.sec, (unsigned int) tv.usec);
#endif /* CONFIG_ANDROID_LOG */
}