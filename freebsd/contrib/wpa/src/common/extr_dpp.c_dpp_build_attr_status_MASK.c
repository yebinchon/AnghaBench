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
struct wpabuf {int dummy; } ;
typedef  enum dpp_status_error { ____Placeholder_dpp_status_error } dpp_status_error ;

/* Variables and functions */
 int DPP_ATTR_STATUS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 

__attribute__((used)) static void FUNC3(struct wpabuf *msg,
				  enum dpp_status_error status)
{
	FUNC0(MSG_DEBUG, "DPP: Status %d", status);
	FUNC1(msg, DPP_ATTR_STATUS);
	FUNC1(msg, 1);
	FUNC2(msg, status);
}