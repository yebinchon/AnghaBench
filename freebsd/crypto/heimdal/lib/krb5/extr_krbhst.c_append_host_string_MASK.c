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
struct krb5_krbhst_info {int dummy; } ;
struct krb5_krbhst_data {int dummy; } ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct krb5_krbhst_data*,struct krb5_krbhst_info*) ; 
 struct krb5_krbhst_info* FUNC1 (int /*<<< orphan*/ ,struct krb5_krbhst_data*,char const*,int,int) ; 

__attribute__((used)) static krb5_error_code
FUNC2(krb5_context context, struct krb5_krbhst_data *kd,
		   const char *host, int def_port, int port)
{
    struct krb5_krbhst_info *hi;

    hi = FUNC1(context, kd, host, def_port, port);
    if(hi == NULL)
	return ENOMEM;

    FUNC0(kd, hi);
    return 0;
}