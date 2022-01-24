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
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_auth_context ;

/* Variables and functions */
 int /*<<< orphan*/  I_AM_HERE ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8 (krb5_context context, int fd,
	      krb5_auth_context auth_context)
{
    krb5_storage *sp;
    krb5_data data;
    int ret;

    ret = FUNC0 (&data, 4);
    if (ret)
	FUNC2 (context, 1, ret, "send_im_here");

    sp = FUNC5 (&data);
    if (sp == NULL)
	FUNC3 (context, 1, "krb5_storage_from_data");
    FUNC6(sp, I_AM_HERE);
    FUNC4(sp);

    ret = FUNC7(context, auth_context, &fd, &data);
    FUNC1(&data);

    if (ret)
	FUNC2 (context, 1, ret, "krb5_write_priv_message");
}