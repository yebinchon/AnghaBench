#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;
typedef  TYPE_1__* kcm_ccache ;
struct TYPE_4__ {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static krb5_error_code
FUNC3(krb5_context context,
		    krb5_ccache id,
		    krb5_principal *principal)
{
    krb5_error_code ret;
    kcm_ccache c = FUNC0(id);

    FUNC1(c);

    ret = FUNC2(context, c->client,
			      principal);

    return ret;
}