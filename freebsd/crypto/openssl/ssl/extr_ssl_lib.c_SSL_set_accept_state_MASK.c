#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int server; TYPE_1__* method; int /*<<< orphan*/  handshake_func; scalar_t__ shutdown; } ;
struct TYPE_6__ {int /*<<< orphan*/  ssl_accept; } ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

void FUNC2(SSL *s)
{
    s->server = 1;
    s->shutdown = 0;
    FUNC1(s);
    s->handshake_func = s->method->ssl_accept;
    FUNC0(s);
}