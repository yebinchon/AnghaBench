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
struct wps_data {int /*<<< orphan*/  cred; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct wpabuf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct wps_data *wps, struct wpabuf *msg)
{
	FUNC0(MSG_DEBUG, "WPS:  * AP Settings");

	if (FUNC1(msg, &wps->cred))
		return -1;

	return 0;
}