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
 char* FUNC0 (struct wpa_global*,char*,size_t*) ; 
 char* FUNC1 (struct wpa_global*,char*,size_t*) ; 

__attribute__((used)) static char * FUNC2(struct wpa_global *global,
					   char *buf, size_t *resp_len)
{
	char *ret;

	ret = FUNC0(global, buf, resp_len);
	if (ret)
		return ret;

	ret = FUNC1(global, buf, resp_len);
	if (ret)
		return ret;

	return NULL;
}