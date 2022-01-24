#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct descr {scalar_t__ type; int /*<<< orphan*/  addr_string; int /*<<< orphan*/  sa; } ;
typedef  int /*<<< orphan*/  krb5_kdc_configuration ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_7__ {scalar_t__ length; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_boolean ;

/* Variables and functions */
 scalar_t__ SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,size_t,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,void*,size_t,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ request_log ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct descr*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(krb5_context context,
	   krb5_kdc_configuration *config,
	   void *buf, size_t len, krb5_boolean prependlength,
	   struct descr *d)
{
    krb5_error_code ret;
    krb5_data reply;
    int datagram_reply = (d->type == SOCK_DGRAM);

    FUNC5(NULL);

    FUNC2(&reply);
    ret = FUNC3(context, config,
				   buf, len, &reply, &prependlength,
				   d->addr_string, d->sa,
				   datagram_reply);
    if(request_log)
	FUNC4(context, request_log, buf, len, &reply, d->sa);
    if(reply.length){
	FUNC6(context, config, prependlength, d, &reply);
	FUNC1(&reply);
    }
    if(ret)
	FUNC0(context, config, 0,
		"Failed processing %lu byte request from %s",
		(unsigned long)len, d->addr_string);
}