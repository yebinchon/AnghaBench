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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {struct socket_call* data; } ;
struct socket_call {struct client* c; TYPE_1__ in; scalar_t__ cred; } ;
struct client {int flags; int /*<<< orphan*/  calls; } ;
typedef  scalar_t__ heim_sipc_call ;
struct TYPE_5__ {int length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ heim_idata ;

/* Variables and functions */
 int HTTP_REPLY ; 
 int INCLUDE_ERROR_CODE ; 
 int WAITING_CLOSE ; 
 int WAITING_READ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct socket_call*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct client*) ; 
 int /*<<< orphan*/  FUNC5 (struct client*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC6(heim_sipc_call ctx, int returnvalue, heim_idata *reply)
{
    struct socket_call *sc = (struct socket_call *)ctx;
    struct client *c = sc->c;

    /* double complete ? */
    if (c == NULL)
	FUNC0();

    if ((c->flags & WAITING_CLOSE) == 0) {
	uint32_t u32;

	/* length */
	u32 = FUNC3(reply->length);
	FUNC5(c, &u32, sizeof(u32));

	/* return value */
	if (c->flags & INCLUDE_ERROR_CODE) {
	    u32 = FUNC3(returnvalue);
	    FUNC5(c, &u32, sizeof(u32));
	}

	/* data */
	FUNC5(c, reply->data, reply->length);

	/* if HTTP, close connection */
	if (c->flags & HTTP_REPLY) {
	    c->flags |= WAITING_CLOSE;
	    c->flags &= ~WAITING_READ;
	}
    }

    c->calls--;
    if (sc->cred)
	FUNC2(sc->cred);
    FUNC1(sc->in.data);
    sc->c = NULL; /* so we can catch double complete */
    FUNC1(sc);

    FUNC4(c);
}