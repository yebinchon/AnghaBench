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
struct wpa_dbus_object_desc {int /*<<< orphan*/  properties; int /*<<< orphan*/  signals; int /*<<< orphan*/  methods; } ;
struct dl_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dl_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dl_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dl_list*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dl_list *list,
			       struct wpa_dbus_object_desc *obj_dsc)
{
	FUNC0(list, obj_dsc->methods);
	FUNC2(list, obj_dsc->signals);
	FUNC1(list, obj_dsc->properties);
}