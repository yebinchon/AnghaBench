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
 int ATTR_CONFIG_ERROR ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 

int FUNC2(struct wpabuf *msg, u16 err)
{
	FUNC0(MSG_DEBUG, "WPS:  * Configuration Error (%d)", err);
	FUNC1(msg, ATTR_CONFIG_ERROR);
	FUNC1(msg, 2);
	FUNC1(msg, err);
	return 0;
}