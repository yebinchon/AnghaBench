#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* read_baton; int /*<<< orphan*/  read; } ;
struct TYPE_5__ {int /*<<< orphan*/ * progress_baton; int /*<<< orphan*/ * progress_func; TYPE_2__ databuf; int /*<<< orphan*/ * skt; } ;
typedef  TYPE_1__ socket_context_t ;
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
typedef  int /*<<< orphan*/  apr_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  serf_bucket_type_socket ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  socket_reader ; 

serf_bucket_t *FUNC3(
    apr_socket_t *skt,
    serf_bucket_alloc_t *allocator)
{
    socket_context_t *ctx;

    /* Oh, well. */
    ctx = FUNC1(allocator, sizeof(*ctx));
    ctx->skt = skt;

    FUNC2(&ctx->databuf);
    ctx->databuf.read = socket_reader;
    ctx->databuf.read_baton = ctx;

    ctx->progress_func = NULL;
    ctx->progress_baton = NULL;
    return FUNC0(&serf_bucket_type_socket, allocator, ctx);
}