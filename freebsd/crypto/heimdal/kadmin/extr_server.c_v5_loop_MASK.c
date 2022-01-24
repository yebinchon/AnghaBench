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
typedef  int /*<<< orphan*/  krb5_socket_t ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_boolean ;
typedef  int /*<<< orphan*/  krb5_auth_context ;

/* Variables and functions */
 scalar_t__ HEIM_ERR_EOF ; 
 int doing_useful_work ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ term_flag ; 

__attribute__((used)) static void
FUNC6 (krb5_context contextp,
	 krb5_auth_context ac,
	 krb5_boolean initial,
	 void *kadm_handlep,
	 krb5_socket_t fd)
{
    krb5_error_code ret;
    krb5_data in, out;

    for (;;) {
	doing_useful_work = 0;
	if(term_flag)
	    FUNC0(0);
	ret = FUNC4(contextp, ac, &fd, &in);
	if(ret == HEIM_ERR_EOF)
	    FUNC0(0);
	if(ret)
	    FUNC3(contextp, 1, ret, "krb5_read_priv_message");
	doing_useful_work = 1;
	FUNC1(kadm_handlep, initial, &in, &out);
	FUNC2(&in);
	ret = FUNC5(contextp, ac, &fd, &out);
	if(ret)
	    FUNC3(contextp, 1, ret, "krb5_write_priv_message");
    }
}