; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_util.c_check_leap_expiration.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_util.c_check_leap_expiration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@check_leap_expiration.logPrefix = internal constant i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [16 x i8] c"leapsecond file\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%s ('%s'): will expire in less than one day\00", align 1
@leapfile_name = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"%s ('%s'): expired less than %d day%s ago\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"%s ('%s'): will expire in less than %d days\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*)* @check_leap_expiration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_leap_expiration(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = call i32 @leapsec_daystolive(i32 %8, i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @LOG_WARNING, align 4
  %15 = load i32, i32* @leapfile_name, align 4
  %16 = call i32 (i32, i8*, i8*, i32, ...) @msyslog(i32 %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 %15)
  br label %44

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 28
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32, i32* @LOG_ERR, align 4
  %28 = load i32, i32* @leapfile_name, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 0, %29
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, -1
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %35 = call i32 (i32, i8*, i8*, i32, ...) @msyslog(i32 %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 %28, i32 %30, i8* %34)
  br label %42

36:                                               ; preds = %23
  %37 = load i32, i32* @LOG_WARNING, align 4
  %38 = load i32, i32* @leapfile_name, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 1, %39
  %41 = call i32 (i32, i8*, i8*, i32, ...) @msyslog(i32 %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %36, %26
  br label %43

43:                                               ; preds = %42, %20, %17
  br label %44

44:                                               ; preds = %43, %13
  ret void
}

declare dso_local i32 @leapsec_daystolive(i32, i32*) #1

declare dso_local i32 @msyslog(i32, i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
