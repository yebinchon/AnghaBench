#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ enable_kx509; } ;
typedef  TYPE_1__ krb5_kdc_configuration ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int,char*) ; 
 scalar_t__ enable_http ; 

__attribute__((used)) static void
FUNC1 (krb5_context context,
		    krb5_kdc_configuration *config,
		    int family)
{
    FUNC0(context, family, "kerberos", 88, "udp");
    FUNC0(context, family, "kerberos", 88, "tcp");
    FUNC0(context, family, "kerberos-sec", 88, "udp");
    FUNC0(context, family, "kerberos-sec", 88, "tcp");
    if(enable_http)
	FUNC0(context, family, "http", 80, "tcp");
    if(config->enable_kx509) {
	FUNC0(context, family, "kca_service", 9878, "udp");
	FUNC0(context, family, "kca_service", 9878, "tcp");
    }

}