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
struct wps_parse_attr {int dummy; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct wps_parse_attr*) ; 
 scalar_t__ FUNC1 (struct wpabuf const*,struct wps_parse_attr*) ; 

int FUNC2(const struct wpabuf *msg)
{
	struct wps_parse_attr attr;

	if (FUNC1(msg, &attr) < 0)
		return 0;

	return FUNC0(&attr);
}