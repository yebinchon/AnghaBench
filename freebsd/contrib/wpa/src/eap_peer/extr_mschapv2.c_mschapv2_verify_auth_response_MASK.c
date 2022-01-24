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
typedef  char u8 ;

/* Variables and functions */
 int MSCHAPV2_AUTH_RESPONSE_LEN ; 
 scalar_t__ FUNC0 (char*,char*,int) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 

int FUNC2(const u8 *auth_response,
				  const u8 *buf, size_t buf_len)
{
	u8 recv_response[MSCHAPV2_AUTH_RESPONSE_LEN];
	if (buf_len < 2 + 2 * MSCHAPV2_AUTH_RESPONSE_LEN ||
	    buf[0] != 'S' || buf[1] != '=' ||
	    FUNC0((char *) (buf + 2), recv_response,
		       MSCHAPV2_AUTH_RESPONSE_LEN) ||
	    FUNC1(auth_response, recv_response,
			    MSCHAPV2_AUTH_RESPONSE_LEN) != 0)
		return -1;
	return 0;
}