#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_1__* gsskrb5_ctx ;
struct TYPE_5__ {int more_flags; } ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int ACCEPTOR_SUBKEY ; 
 int /*<<< orphan*/  GSS_KRB5_S_KG_NO_SUBKEY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

OM_uint32
FUNC3(const gsskrb5_ctx ctx,
			krb5_context context,
			krb5_keyblock **key)
{
    FUNC0(ctx, context, key);
    if(*key == NULL) {
	/*
	 * Only use the initiator subkey or ticket session key if an
	 * acceptor subkey was not required.
	 */
	if ((ctx->more_flags & ACCEPTOR_SUBKEY) == 0)
	    FUNC1(ctx, context, key);
    }
    if (*key == NULL) {
	FUNC2(context, 0, "No token key available");
	return GSS_KRB5_S_KG_NO_SUBKEY;
    }
    return 0;
}