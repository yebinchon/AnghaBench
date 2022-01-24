#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  TYPE_1__* gss_buffer_t ;
struct TYPE_3__ {int length; int* value; } ;

/* Variables and functions */
 int* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int*,int) ; 
 int FUNC2 (int) ; 

void
FUNC3 (int sock, gss_buffer_t buf)
{
    uint32_t len, net_len;

    FUNC1 (sock, &net_len, 4);
    len = FUNC2(net_len);
    buf->length = len;
    buf->value  = FUNC0(len);
    FUNC1 (sock, buf->value, len);
}