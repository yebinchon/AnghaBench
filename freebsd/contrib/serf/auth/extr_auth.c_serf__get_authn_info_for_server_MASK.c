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
struct TYPE_4__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  server_authn_info; } ;
typedef  TYPE_1__ serf_context_t ;
struct TYPE_5__ {int /*<<< orphan*/  host_url; TYPE_1__* ctx; } ;
typedef  TYPE_2__ serf_connection_t ;
typedef  int /*<<< orphan*/  serf__authn_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_HASH_KEY_STRING ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

serf__authn_info_t *FUNC4(serf_connection_t *conn)
{
    serf_context_t *ctx = conn->ctx;
    serf__authn_info_t *authn_info;

    authn_info = FUNC0(ctx->server_authn_info, conn->host_url,
                              APR_HASH_KEY_STRING);

    if (!authn_info) {
        authn_info = FUNC2(ctx->pool, sizeof(serf__authn_info_t));
        FUNC1(ctx->server_authn_info,
                     FUNC3(ctx->pool, conn->host_url),
                     APR_HASH_KEY_STRING, authn_info);
    }

    return authn_info;
}