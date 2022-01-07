
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_log_facility ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 int errx (int,char*,scalar_t__) ;
 int krb5_addlog_dest (int ,int *,char*) ;
 int krb5_free_context (int ) ;
 scalar_t__ krb5_init_context (int *) ;
 int krb5_initlog (int ,char*,int **) ;
 int krb5_set_warn_dest (int ,int *) ;

__attribute__((used)) static void
check_log(void)
{
    int i;

    for (i = 0; i < 10; i++) {
 krb5_log_facility *logfacility;
 krb5_context context;
 krb5_error_code ret;

 ret = krb5_init_context(&context);
 if (ret)
     errx (1, "krb5_init_context failed: %d", ret);

 krb5_initlog(context, "test-mem", &logfacility);
 krb5_addlog_dest(context, logfacility, "0/STDERR:");
 krb5_set_warn_dest(context, logfacility);

 krb5_free_context(context);
    }
}
