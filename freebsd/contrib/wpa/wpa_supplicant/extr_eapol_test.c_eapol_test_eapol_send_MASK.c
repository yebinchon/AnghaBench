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

/* Variables and functions */
 int IEEE802_1X_TYPE_EAP_PACKET ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  eapol_test ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int FUNC3(void *ctx, int type, const u8 *buf,
				 size_t len)
{
	FUNC1("WPA: eapol_test_eapol_send(type=%d len=%lu)\n",
	       type, (unsigned long) len);
	if (type == IEEE802_1X_TYPE_EAP_PACKET) {
		FUNC2(MSG_DEBUG, "TX EAP -> RADIUS", buf, len);
		FUNC0(&eapol_test, buf, len);
	}
	return 0;
}