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
 int /*<<< orphan*/  P2P_DEV_DISC_RESP ; 
 int /*<<< orphan*/ * FUNC0 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 struct wpabuf* FUNC4 (int) ; 

__attribute__((used)) static struct wpabuf * FUNC5(u8 dialog_token, u8 status)
{
	struct wpabuf *buf;
	u8 *len;

	buf = FUNC4(100);
	if (buf == NULL)
		return NULL;

	FUNC1(buf, P2P_DEV_DISC_RESP, dialog_token);

	len = FUNC0(buf);
	FUNC2(buf, status);
	FUNC3(buf, len);

	return buf;
}