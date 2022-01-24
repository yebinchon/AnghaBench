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
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wpabuf*) ; 

__attribute__((used)) static void FUNC4(struct wpabuf *resp, u8 srv_proto,
			      u8 srv_trans_id, u8 status)
{
	u8 *len_pos;

	if (FUNC3(resp) < 5)
		return;

	/* Length (to be filled) */
	len_pos = FUNC1(resp, 2);
	FUNC2(resp, srv_proto);
	FUNC2(resp, srv_trans_id);
	/* Status Code */
	FUNC2(resp, status);
	/* Response Data: empty */
	FUNC0(len_pos, (u8 *) FUNC1(resp, 0) - len_pos - 2);
}