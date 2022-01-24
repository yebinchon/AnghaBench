#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* session_ctx; int /*<<< orphan*/  version; } ;
struct TYPE_8__ {unsigned int session_id_length; int /*<<< orphan*/  session_id; int /*<<< orphan*/  ssl_version; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  sessions; } ;
typedef  TYPE_2__ SSL_SESSION ;
typedef  TYPE_3__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char const*,unsigned int) ; 

int FUNC4(const SSL *ssl, const unsigned char *id,
                                unsigned int id_len)
{
    /*
     * A quick examination of SSL_SESSION_hash and SSL_SESSION_cmp shows how
     * we can "construct" a session to give us the desired check - i.e. to
     * find if there's a session in the hash table that would conflict with
     * any new session built out of this id/id_len and the ssl_version in use
     * by this SSL.
     */
    SSL_SESSION r, *p;

    if (id_len > sizeof(r.session_id))
        return 0;

    r.ssl_version = ssl->version;
    r.session_id_length = id_len;
    FUNC3(r.session_id, id, id_len);

    FUNC0(ssl->session_ctx->lock);
    p = FUNC2(ssl->session_ctx->sessions, &r);
    FUNC1(ssl->session_ctx->lock);
    return (p != NULL);
}