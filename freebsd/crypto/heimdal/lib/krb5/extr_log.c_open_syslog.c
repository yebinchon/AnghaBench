
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct _heimdal_syslog_data {int priority; } ;
struct TYPE_4__ {int program; } ;
typedef TYPE_1__ krb5_log_facility ;
typedef int krb5_error_code ;
typedef int krb5_context ;


 int ENOMEM ;
 int LOG_AUTH ;
 int LOG_ERR ;
 int LOG_NDELAY ;
 int LOG_PID ;
 int N_ (char*,char*) ;
 int close_syslog ;
 int find_value (char const*,int ) ;
 int krb5_addlog_func (int ,TYPE_1__*,int,int,int ,int ,struct _heimdal_syslog_data*) ;
 int krb5_set_error_message (int ,int ,int ) ;
 int log_syslog ;
 struct _heimdal_syslog_data* malloc (int) ;
 int roken_openlog (int ,int,int) ;
 int syslogvals ;

__attribute__((used)) static krb5_error_code
open_syslog(krb5_context context,
     krb5_log_facility *facility, int min, int max,
     const char *sev, const char *fac)
{
    struct _heimdal_syslog_data *sd = malloc(sizeof(*sd));
    int i;

    if(sd == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM,
          N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    i = find_value(sev, syslogvals);
    if(i == -1)
 i = LOG_ERR;
    sd->priority = i;
    i = find_value(fac, syslogvals);
    if(i == -1)
 i = LOG_AUTH;
    sd->priority |= i;
    roken_openlog(facility->program, LOG_PID | LOG_NDELAY, i);
    return krb5_addlog_func(context, facility, min, max,
       log_syslog, close_syslog, sd);
}
