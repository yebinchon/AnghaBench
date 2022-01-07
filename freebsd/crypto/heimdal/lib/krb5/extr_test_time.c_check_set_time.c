
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
typedef scalar_t__ krb5_timestamp ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int int32_t ;


 int abs (scalar_t__) ;
 int gettimeofday (struct timeval*,int *) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_errx (int ,int,char*,int) ;
 scalar_t__ krb5_set_real_time (int ,scalar_t__,int ) ;
 scalar_t__ krb5_us_timeofday (int ,scalar_t__*,int *) ;

__attribute__((used)) static void
check_set_time(krb5_context context)
{
    krb5_error_code ret;
    krb5_timestamp sec;
    int32_t usec;
    struct timeval tv;
    int diff = 10;
    int diff2;

    gettimeofday(&tv, ((void*)0));

    ret = krb5_set_real_time(context, tv.tv_sec + diff, tv.tv_usec);
    if (ret)
 krb5_err(context, 1, ret, "krb5_us_timeofday");

    ret = krb5_us_timeofday(context, &sec, &usec);
    if (ret)
 krb5_err(context, 1, ret, "krb5_us_timeofday");

    diff2 = abs(sec - tv.tv_sec);

    if (diff2 < 9 || diff > 11)
 krb5_errx(context, 1, "set time error: diff: %d",
    abs(sec - tv.tv_sec));
}
