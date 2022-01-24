#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  TYPE_1__* gss_buffer_t ;
struct TYPE_4__ {int length; unsigned char* value; } ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC2 (int,unsigned char*,int) ; 

void
FUNC3 (int sock, gss_buffer_t buf)
{
    unsigned char net_len[4];
    uint32_t len;
    OM_uint32 min_stat;

    len = buf->length;

    net_len[0] = (len >>  0) & 0xFF;
    net_len[1] = (len >>  8) & 0xFF;
    net_len[2] = (len >> 16) & 0xFF;
    net_len[3] = (len >> 24) & 0xFF;

    if (FUNC2 (sock, net_len, 4) != 4)
	FUNC0 (1, "write");
    if (FUNC2 (sock, buf->value, len) != len)
	FUNC0 (1, "write");

    FUNC1 (&min_stat, buf);
}