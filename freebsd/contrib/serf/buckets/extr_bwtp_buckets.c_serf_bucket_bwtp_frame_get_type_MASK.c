#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* data; } ;
typedef  TYPE_1__ serf_bucket_t ;
struct TYPE_8__ {int type; } ;
typedef  TYPE_2__ incoming_context_t ;
typedef  TYPE_2__ frame_context_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

int FUNC2(
    serf_bucket_t *bucket)
{
    if (FUNC0(bucket)) {
        frame_context_t *ctx = bucket->data;

        return ctx->type;
    }
    else if (FUNC1(bucket)) {
        incoming_context_t *ctx = bucket->data;

        return ctx->type;
    }

    return -1;
}