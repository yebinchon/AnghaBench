#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_9__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  scalar_t__ kadm5_ret_t ;
struct TYPE_10__ {int sock; int /*<<< orphan*/  context; int /*<<< orphan*/  ac; } ;
typedef  TYPE_2__ kadm5_client_context ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_1__) ; 

kadm5_ret_t
FUNC10(kadm5_client_context *context, krb5_storage *sp)
{
    krb5_data msg, out;
    krb5_error_code ret;
    size_t len;
    krb5_storage *sock;

    FUNC0(context->sock != -1);

    len = FUNC8(sp, 0, SEEK_CUR);
    ret = FUNC2(&msg, len);
    if (ret) {
	FUNC1(context->context);
	return ret;
    }
    FUNC8(sp, 0, SEEK_SET);
    FUNC7(sp, msg.data, msg.length);

    ret = FUNC4(context->context, context->ac, &msg, &out, NULL);
    FUNC3(&msg);
    if(ret)
	return ret;

    sock = FUNC6(context->sock);
    if(sock == NULL) {
	FUNC1(context->context);
	FUNC3(&out);
	return ENOMEM;
    }

    ret = FUNC9(sock, out);
    if (ret)
	FUNC1(context->context);
    FUNC5(sock);
    FUNC3(&out);
    return ret;
}