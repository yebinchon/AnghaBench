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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int SSL3_MT_CHANGE_CIPHER_SPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(SSL *s, WPACKET *pkt, int htype)
{
    /* No header in the event of a CCS */
    if (htype == SSL3_MT_CHANGE_CIPHER_SPEC)
        return 1;

    /* Set the content type and 3 bytes for the message len */
    if (!FUNC0(pkt, htype)
            || !FUNC1(pkt))
        return 0;

    return 1;
}