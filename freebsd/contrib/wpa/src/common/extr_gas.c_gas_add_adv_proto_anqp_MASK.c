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
typedef  int u8 ;
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int ACCESS_NETWORK_QUERY_PROTOCOL ; 
 int WLAN_EID_ADV_PROTO ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int) ; 

__attribute__((used)) static void FUNC1(struct wpabuf *buf, u8 query_resp_len_limit,
				   u8 pame_bi)
{
	/* Advertisement Protocol IE */
	FUNC0(buf, WLAN_EID_ADV_PROTO);
	FUNC0(buf, 2); /* Length */
	FUNC0(buf, (query_resp_len_limit & 0x7f) |
		      (pame_bi ? 0x80 : 0));
	/* Advertisement Protocol */
	FUNC0(buf, ACCESS_NETWORK_QUERY_PROTOCOL);
}