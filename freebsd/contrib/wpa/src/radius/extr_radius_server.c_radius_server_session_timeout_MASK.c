#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct radius_session {int /*<<< orphan*/  sess_id; } ;
struct radius_server_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radius_server_data*,struct radius_session*) ; 

__attribute__((used)) static void FUNC2(void *eloop_ctx, void *timeout_ctx)
{
	struct radius_server_data *data = eloop_ctx;
	struct radius_session *sess = timeout_ctx;

	FUNC0("Timing out authentication session 0x%x", sess->sess_id);
	FUNC1(data, sess);
}