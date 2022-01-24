#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  p ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_11__ {unsigned char* data; int length; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int int32_t ;
typedef  TYPE_2__* gsskrb5_ctx ;
struct TYPE_13__ {int stime; } ;
struct TYPE_12__ {int more_flags; int /*<<< orphan*/  state; int /*<<< orphan*/  target; int /*<<< orphan*/  ccache; } ;
typedef  TYPE_3__ KRB_ERROR ;

/* Variables and functions */
 int /*<<< orphan*/  INITIATOR_RESTART ; 
 scalar_t__ KRB5KRB_AP_ERR_SKEW ; 
 int RETRIED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_3__*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static krb5_error_code
FUNC5(krb5_context context,
		    gsskrb5_ctx ctx,
		    krb5_data indata)
{
    krb5_error_code kret;
    KRB_ERROR error;

    kret = FUNC3(context, &indata, &error);
    if (kret == 0) {
	kret = FUNC2(context, &error, NULL);

	/* save the time skrew for this host */
	if (kret == KRB5KRB_AP_ERR_SKEW) {
	    krb5_data timedata;
	    unsigned char p[4];
	    int32_t t = error.stime - FUNC4(NULL);

	    p[0] = (t >> 24) & 0xFF;
	    p[1] = (t >> 16) & 0xFF;
	    p[2] = (t >> 8)  & 0xFF;
	    p[3] = (t >> 0)  & 0xFF;

	    timedata.data = p;
	    timedata.length = sizeof(p);

	    FUNC1(context, ctx->ccache, ctx->target,
			       "time-offset", &timedata);

	    if ((ctx->more_flags & RETRIED) == 0)
		 ctx->state = INITIATOR_RESTART;
	    ctx->more_flags |= RETRIED;
	}
	FUNC0 (&error);
    }
    return kret;
}