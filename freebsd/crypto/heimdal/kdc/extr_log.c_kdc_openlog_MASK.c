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
struct TYPE_3__ {int /*<<< orphan*/  logf; } ;
typedef  TYPE_1__ krb5_kdc_configuration ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  KDC_LOG_FILE ; 
 scalar_t__ FUNC0 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 char** FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(krb5_context context,
	    const char *service,
	    krb5_kdc_configuration *config)
{
    char **s = NULL, **p;
    FUNC7(context, "kdc", &config->logf);
    s = FUNC6(context, NULL, service, "logging", NULL);
    if(s == NULL)
	s = FUNC6(context, NULL, "logging", service, NULL);
    if(s){
	for(p = s; *p; p++)
	    FUNC4(context, config->logf, *p);
	FUNC5(s);
    }else {
	char *ss;
	if (FUNC0(&ss, "0-1/FILE:%d/%d", FUNC3(context),
	    KDC_LOG_FILE) < 0)
	    FUNC1(1, NULL);
	FUNC4(context, config->logf, ss);
	FUNC2(ss);
    }
    FUNC8(context, config->logf);
}