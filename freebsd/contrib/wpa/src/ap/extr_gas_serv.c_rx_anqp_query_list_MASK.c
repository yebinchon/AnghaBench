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
struct hostapd_data {int dummy; } ;
struct anqp_query_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*,int /*<<< orphan*/ ,struct anqp_query_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct hostapd_data *hapd,
			       const u8 *pos, const u8 *end,
			       struct anqp_query_info *qi)
{
	FUNC2(MSG_DEBUG, "ANQP: %u Info IDs requested in Query list",
		   (unsigned int) (end - pos) / 2);

	while (end - pos >= 2) {
		FUNC1(hapd, FUNC0(pos), qi);
		pos += 2;
	}
}