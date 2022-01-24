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
typedef  int u16 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int ATTR_SELECTED_REGISTRAR_CONFIG_METHODS ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int) ; 

__attribute__((used)) static int FUNC1(struct wpabuf *msg,
					       u16 sel_reg_config_methods)
{
	FUNC0(msg, ATTR_SELECTED_REGISTRAR_CONFIG_METHODS);
	FUNC0(msg, 2);
	FUNC0(msg, sel_reg_config_methods);
	return 0;
}