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
struct wpa_global {int dummy; } ;

/* Variables and functions */
 int MSG_DEBUG ; 
 int MSG_ERROR ; 
 int MSG_EXCESSIVE ; 
 int MSG_INFO ; 
 int MSG_MSGDUMP ; 
 int MSG_WARNING ; 
 int wpa_debug_level ; 
 int wpa_debug_show_keys ; 
 int wpa_debug_timestamp ; 
 int /*<<< orphan*/  FUNC0 (struct wpa_global*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_global*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_global*) ; 

int FUNC3(struct wpa_global *global, int debug_level,
				    int debug_timestamp, int debug_show_keys)
{

	int old_level, old_timestamp, old_show_keys;

	/* check for allowed debuglevels */
	if (debug_level != MSG_EXCESSIVE &&
	    debug_level != MSG_MSGDUMP &&
	    debug_level != MSG_DEBUG &&
	    debug_level != MSG_INFO &&
	    debug_level != MSG_WARNING &&
	    debug_level != MSG_ERROR)
		return -1;

	old_level = wpa_debug_level;
	old_timestamp = wpa_debug_timestamp;
	old_show_keys = wpa_debug_show_keys;

	wpa_debug_level = debug_level;
	wpa_debug_timestamp = debug_timestamp ? 1 : 0;
	wpa_debug_show_keys = debug_show_keys ? 1 : 0;

	if (wpa_debug_level != old_level)
		FUNC0(global);
	if (wpa_debug_timestamp != old_timestamp)
		FUNC2(global);
	if (wpa_debug_show_keys != old_show_keys)
		FUNC1(global);

	return 0;
}