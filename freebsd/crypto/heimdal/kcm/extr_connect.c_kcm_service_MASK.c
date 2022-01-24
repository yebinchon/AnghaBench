#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_error_code ;
struct TYPE_15__ {unsigned char* data; size_t length; } ;
typedef  TYPE_1__ krb5_data ;
struct TYPE_16__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  session; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
typedef  TYPE_2__ kcm_client ;
typedef  int /*<<< orphan*/  heim_sipc_call ;
typedef  int /*<<< orphan*/  (* heim_ipc_complete ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ;
struct TYPE_17__ {int length; unsigned char* data; } ;
typedef  TYPE_4__ heim_idata ;
typedef  int /*<<< orphan*/  heim_icred ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 unsigned char KCM_PROTOCOL_VERSION_MAJOR ; 
 unsigned char KCM_PROTOCOL_VERSION_MINOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  kcm_context ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,unsigned char,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC11(void *ctx, const heim_idata *req,
	    const heim_icred cred,
	    heim_ipc_complete complete,
	    heim_sipc_call cctx)
{
    kcm_client peercred;
    krb5_error_code ret;
    krb5_data request, rep;
    unsigned char *buf;
    size_t len;

    FUNC7(&rep);

    peercred.uid = FUNC3(cred);
    peercred.gid = FUNC0(cred);
    peercred.pid = FUNC1(cred);
    peercred.session = FUNC2(cred);

    if (req->length < 4) {
	FUNC5(1, "malformed request from process %d (too short)",
		peercred.pid);
	(*complete)(cctx, EINVAL, NULL);
	return;
    }

    buf = req->data;
    len = req->length;

    if (buf[0] != KCM_PROTOCOL_VERSION_MAJOR ||
	buf[1] != KCM_PROTOCOL_VERSION_MINOR) {
	FUNC5(1, "incorrect protocol version %d.%d from process %d",
		buf[0], buf[1], peercred.pid);
	(*complete)(cctx, EINVAL, NULL);
	return;
    }

    request.data = buf + 2;
    request.length = len - 2;

    /* buf is now pointing at opcode */

    ret = FUNC4(kcm_context, &peercred, &request, &rep);

    (*complete)(cctx, ret, &rep);
    FUNC6(&rep);
}