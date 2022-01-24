#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct ssl_async_args {TYPE_2__* s; } ;
struct TYPE_11__ {int (* handshake_func ) (TYPE_2__*) ;int mode; TYPE_1__* method; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* ssl_renegotiate_check ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  SSL_F_SSL_DO_HANDSHAKE ; 
 int SSL_MODE_ASYNC ; 
 int /*<<< orphan*/  SSL_R_CONNECTION_TYPE_NOT_SET ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  ssl_do_handshake_intern ; 
 int FUNC5 (TYPE_2__*,struct ssl_async_args*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*) ; 

int FUNC8(SSL *s)
{
    int ret = 1;

    if (s->handshake_func == NULL) {
        FUNC3(SSL_F_SSL_DO_HANDSHAKE, SSL_R_CONNECTION_TYPE_NOT_SET);
        return -1;
    }

    FUNC4(s, -1);

    s->method->ssl_renegotiate_check(s, 0);

    if (FUNC2(s) || FUNC1(s)) {
        if ((s->mode & SSL_MODE_ASYNC) && FUNC0() == NULL) {
            struct ssl_async_args args;

            args.s = s;

            ret = FUNC5(s, &args, ssl_do_handshake_intern);
        } else {
            ret = s->handshake_func(s);
        }
    }
    return ret;
}