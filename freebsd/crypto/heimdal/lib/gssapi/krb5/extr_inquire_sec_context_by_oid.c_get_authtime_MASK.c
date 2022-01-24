#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* gsskrb5_ctx ;
typedef  int /*<<< orphan*/  gss_buffer_set_t ;
struct TYPE_10__ {int length; unsigned char* value; } ;
typedef  TYPE_4__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_9__ {int /*<<< orphan*/  ctx_id_mutex; TYPE_2__* ticket; } ;
struct TYPE_7__ {int /*<<< orphan*/  authtime; } ;
struct TYPE_8__ {TYPE_1__ ticket; } ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  GSS_S_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static OM_uint32
FUNC5(OM_uint32 *minor_status,
	     gsskrb5_ctx ctx,
	     gss_buffer_set_t *data_set)

{
    gss_buffer_desc value;
    unsigned char buf[4];
    OM_uint32 authtime;

    FUNC0(&ctx->ctx_id_mutex);
    if (ctx->ticket == NULL) {
	FUNC1(&ctx->ctx_id_mutex);
	FUNC3(EINVAL, "No ticket to obtain auth time from");
	*minor_status = EINVAL;
	return GSS_S_FAILURE;
    }

    authtime = ctx->ticket->ticket.authtime;

    FUNC1(&ctx->ctx_id_mutex);

    FUNC2(authtime, buf);
    value.length = sizeof(buf);
    value.value = buf;

    return FUNC4(minor_status,
				     &value,
				     data_set);
}