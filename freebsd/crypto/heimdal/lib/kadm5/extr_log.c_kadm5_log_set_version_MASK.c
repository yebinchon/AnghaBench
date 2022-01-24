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
struct TYPE_5__ {int /*<<< orphan*/  version; } ;
struct TYPE_4__ {TYPE_2__ log_context; } ;
typedef  TYPE_1__ kadm5_server_context ;
typedef  int /*<<< orphan*/  kadm5_ret_t ;
typedef  TYPE_2__ kadm5_log_context ;

/* Variables and functions */

kadm5_ret_t
FUNC0 (kadm5_server_context *context, uint32_t vno)
{
    kadm5_log_context *log_context = &context->log_context;

    log_context->version = vno;
    return 0;
}