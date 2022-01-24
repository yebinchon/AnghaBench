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
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_3__ {int /*<<< orphan*/  logf; } ;
typedef  TYPE_1__ krb5_kdc_configuration ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**,int,char const*,int /*<<< orphan*/ ) ; 

char*
FUNC1(krb5_context context,
	       krb5_kdc_configuration *config,
	       int level, const char *fmt, va_list ap)
{
    char *msg;
    FUNC0(context, config->logf, &msg, level, fmt, ap);
    return msg;
}