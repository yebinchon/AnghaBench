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
struct p2p_message {int* manageability; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int P2P_MAN_CROSS_CONNECTION_PERMITTED ; 
 int /*<<< orphan*/  FUNC0 (struct p2p_message*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct wpabuf const*,struct p2p_message*) ; 

int FUNC2(const struct wpabuf *p2p_ie)
{
	struct p2p_message msg;

	FUNC0(&msg, 0, sizeof(msg));
	if (FUNC1(p2p_ie, &msg))
		return 0;

	if (!msg.manageability)
		return 0;

	return !(msg.manageability[0] & P2P_MAN_CROSS_CONNECTION_PERMITTED);
}