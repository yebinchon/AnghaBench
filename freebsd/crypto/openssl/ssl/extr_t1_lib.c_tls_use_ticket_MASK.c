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
struct TYPE_4__ {int options; } ;
typedef  TYPE_1__ SSL ;

/* Variables and functions */
 int SSL_OP_NO_TICKET ; 
 int /*<<< orphan*/  SSL_SECOP_TICKET ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC1(SSL *s)
{
    if ((s->options & SSL_OP_NO_TICKET))
        return 0;
    return FUNC0(s, SSL_SECOP_TICKET, 0, 0, NULL);
}