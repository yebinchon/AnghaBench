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
typedef  int /*<<< orphan*/  starttime_str ;
typedef  int /*<<< orphan*/  renewtime_str ;
typedef  int /*<<< orphan*/  krb5_kdc_configuration ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  endtime_str ;
typedef  int /*<<< orphan*/  authtime_str ;
typedef  int /*<<< orphan*/  KerberosTime ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,char const*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

void
FUNC3(krb5_context context,
		   krb5_kdc_configuration *config,
		   const char *type,
		   KerberosTime authtime, KerberosTime *starttime,
		   KerberosTime endtime, KerberosTime *renew_till)
{
    char authtime_str[100], starttime_str[100],
	endtime_str[100], renewtime_str[100];

    FUNC1(context, authtime,
		     authtime_str, sizeof(authtime_str), TRUE);
    if (starttime)
	FUNC1(context, *starttime,
			 starttime_str, sizeof(starttime_str), TRUE);
    else
	FUNC2(starttime_str, "unset", sizeof(starttime_str));
    FUNC1(context, endtime,
		     endtime_str, sizeof(endtime_str), TRUE);
    if (renew_till)
	FUNC1(context, *renew_till,
			 renewtime_str, sizeof(renewtime_str), TRUE);
    else
	FUNC2(renewtime_str, "unset", sizeof(renewtime_str));

    FUNC0(context, config, 5,
	    "%s authtime: %s starttime: %s endtime: %s renew till: %s",
	    type, authtime_str, starttime_str, endtime_str, renewtime_str);
}