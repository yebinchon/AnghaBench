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
typedef  int /*<<< orphan*/  WPACKET ;

/* Variables and functions */
 int /*<<< orphan*/  DTLS1_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 

int FUNC2(WPACKET *pkt, unsigned char *cookie,
                                  size_t cookie_len)
{
    /* Always use DTLS 1.0 version: see RFC 6347 */
    if (!FUNC0(pkt, DTLS1_VERSION)
            || !FUNC1(pkt, cookie, cookie_len))
        return 0;

    return 1;
}