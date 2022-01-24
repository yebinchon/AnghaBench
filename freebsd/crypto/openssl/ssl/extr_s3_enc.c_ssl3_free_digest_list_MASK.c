#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* s3; } ;
struct TYPE_4__ {int /*<<< orphan*/ * handshake_dgst; int /*<<< orphan*/ * handshake_buffer; } ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(SSL *s)
{
    FUNC0(s->s3->handshake_buffer);
    s->s3->handshake_buffer = NULL;
    FUNC1(s->s3->handshake_dgst);
    s->s3->handshake_dgst = NULL;
}