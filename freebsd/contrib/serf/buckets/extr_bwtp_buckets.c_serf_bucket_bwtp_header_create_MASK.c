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
typedef  int /*<<< orphan*/  serf_bucket_t ;
typedef  int /*<<< orphan*/  serf_bucket_alloc_t ;
struct TYPE_4__ {int channel; char const* phrase; int /*<<< orphan*/  headers; scalar_t__ open; scalar_t__ type; } ;
typedef  TYPE_1__ frame_context_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  serf_bucket_type_bwtp_frame ; 

serf_bucket_t *FUNC3(
    int channel,
    const char *phrase,
    serf_bucket_alloc_t *allocator)
{
    frame_context_t *ctx;

    ctx = FUNC2(allocator, sizeof(*ctx));
    ctx->type = 0;
    ctx->open = 0;
    ctx->channel = channel;
    ctx->phrase = phrase;
    ctx->headers = FUNC1(allocator);

    return FUNC0(&serf_bucket_type_bwtp_frame, allocator, ctx);
}