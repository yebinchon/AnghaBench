#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* ssl_ctx; } ;
typedef  TYPE_1__ ssl_context_t ;
struct TYPE_7__ {TYPE_1__* data; } ;
typedef  TYPE_2__ serf_bucket_t ;
struct TYPE_8__ {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC2(serf_bucket_t *bucket)
{
    ssl_context_t *ctx = bucket->data;

    if (!--ctx->ssl_ctx->refcount) {
        FUNC1(ctx->ssl_ctx);
    }

    FUNC0(bucket);
}