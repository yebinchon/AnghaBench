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
typedef  int /*<<< orphan*/  u8 ;
struct wps_parse_attr {int /*<<< orphan*/  const* uuid_e; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct wpabuf const*,struct wps_parse_attr*) ; 

const u8 * FUNC1(const struct wpabuf *msg)
{
	struct wps_parse_attr attr;

	if (FUNC0(msg, &attr) < 0)
		return NULL;
	return attr.uuid_e;
}