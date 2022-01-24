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
typedef  int /*<<< orphan*/  uint16_t ;
struct sockaddr {int dummy; } ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_auth_context ;

/* Variables and functions */
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct sockaddr*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6 (krb5_auth_context auth_context,
	    int s,
	    struct sockaddr *sa,
	    int sa_size,
	    uint16_t result_code,
	    const char *expl)
{
    krb5_error_code ret;
    krb5_data krb_priv_data;
    krb5_data ap_rep_data;
    krb5_data e_data;

    ret = FUNC2 (context,
		       auth_context,
		       &ap_rep_data);
    if (ret) {
	FUNC3 (context, ret, "Could not even generate error reply");
	return;
    }

    if (FUNC4(&e_data, result_code, expl))
	return;

    ret = FUNC1 (context,
			auth_context,
			&e_data,
			&krb_priv_data,
			NULL);
    FUNC0 (&e_data);
    if (ret) {
	FUNC3 (context, ret, "Could not even generate error reply");
	return;
    }
    FUNC5 (s, sa, sa_size, &ap_rep_data, &krb_priv_data);
    FUNC0 (&ap_rep_data);
    FUNC0 (&krb_priv_data);
}