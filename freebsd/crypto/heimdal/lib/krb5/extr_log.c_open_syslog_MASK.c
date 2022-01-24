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
struct _heimdal_syslog_data {int priority; } ;
struct TYPE_4__ {int /*<<< orphan*/  program; } ;
typedef  TYPE_1__ krb5_log_facility ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int LOG_AUTH ; 
 int LOG_ERR ; 
 int LOG_NDELAY ; 
 int LOG_PID ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  close_syslog ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct _heimdal_syslog_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_syslog ; 
 struct _heimdal_syslog_data* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  syslogvals ; 

__attribute__((used)) static krb5_error_code
FUNC6(krb5_context context,
	    krb5_log_facility *facility, int min, int max,
	    const char *sev, const char *fac)
{
    struct _heimdal_syslog_data *sd = FUNC4(sizeof(*sd));
    int i;

    if(sd == NULL) {
	FUNC3(context, ENOMEM,
			       FUNC0("malloc: out of memory", ""));
	return ENOMEM;
    }
    i = FUNC1(sev, syslogvals);
    if(i == -1)
	i = LOG_ERR;
    sd->priority = i;
    i = FUNC1(fac, syslogvals);
    if(i == -1)
	i = LOG_AUTH;
    sd->priority |= i;
    FUNC5(facility->program, LOG_PID | LOG_NDELAY, i);
    return FUNC2(context, facility, min, max,
			    log_syslog, close_syslog, sd);
}