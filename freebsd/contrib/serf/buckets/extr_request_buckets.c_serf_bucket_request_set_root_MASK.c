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
struct TYPE_4__ {int /*<<< orphan*/  allocator; scalar_t__ data; } ;
typedef  TYPE_1__ serf_bucket_t ;
struct TYPE_5__ {char* uri; } ;
typedef  TYPE_2__ request_context_t ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(
    serf_bucket_t *bucket,
    const char *root_url)
{
    request_context_t *ctx = (request_context_t *)bucket->data;

    /* If uri is already absolute, don't change it. */
    if (ctx->uri[0] != '/')
        return;

    /* If uri is '/' replace it with root_url. */
    if (ctx->uri[1] == '\0')
        ctx->uri = root_url;
    else
        ctx->uri =
            FUNC0(FUNC1(bucket->allocator),
                        root_url,
                        ctx->uri,
                        NULL);
}