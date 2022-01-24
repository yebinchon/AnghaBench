#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ kadm5_server_context ;
typedef  int /*<<< orphan*/  HDB ;

/* Variables and functions */

HDB *
FUNC0(void *server_handle)
{
    kadm5_server_context *context = server_handle;
    return context->db;
}