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
struct TYPE_4__ {int length; int* value; } ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int*,int) ; 

void
FUNC4 (int sock, gss_buffer_t buf)
{
    uint32_t len, net_len;
    OM_uint32 min_stat;

    len = buf->length;

    net_len = FUNC2(len);

    if (FUNC3 (sock, &net_len, 4) != 4)
	FUNC0 (1, "write");
    if (FUNC3 (sock, buf->value, len) != len)
	FUNC0 (1, "write");

    FUNC1 (&min_stat, buf);
}