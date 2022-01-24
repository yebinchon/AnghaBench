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
struct wps_registrar {int /*<<< orphan*/  sel_reg_union; } ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int ATTR_SELECTED_REGISTRAR ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 

__attribute__((used)) static int FUNC3(struct wps_registrar *reg,
					struct wpabuf *msg)
{
	if (!reg->sel_reg_union)
		return 0;
	FUNC0(MSG_DEBUG, "WPS:  * Selected Registrar");
	FUNC1(msg, ATTR_SELECTED_REGISTRAR);
	FUNC1(msg, 1);
	FUNC2(msg, 1);
	return 0;
}