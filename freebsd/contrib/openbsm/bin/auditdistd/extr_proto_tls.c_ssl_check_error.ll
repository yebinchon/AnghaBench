; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_ssl_check_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_proto_tls.c_ssl_check_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"SSL_ERROR_WANT_READ\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"SSL_ERROR_WANT_WRITE\00", align 1
@EX_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Connection closed.\00", align 1
@EX_TEMPFAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"SSL I/O error.\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"SSL protocol error.\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Unknown SSL error (%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @ssl_check_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_check_error(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @SSL_get_error(i32* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %27 [
    i32 133, label %11
    i32 130, label %12
    i32 129, label %14
    i32 128, label %16
    i32 131, label %19
    i32 132, label %23
  ]

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

12:                                               ; preds = %2
  %13 = call i32 @pjdlog_debug(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %32

14:                                               ; preds = %2
  %15 = call i32 @pjdlog_debug(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load i32, i32* @EX_OK, align 4
  %18 = call i32 (i32, i8*, ...) @pjdlog_exitx(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %19

19:                                               ; preds = %2, %16
  %20 = call i32 (...) @ssl_log_errors()
  %21 = load i32, i32* @EX_TEMPFAIL, align 4
  %22 = call i32 (i32, i8*, ...) @pjdlog_exitx(i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %23

23:                                               ; preds = %2, %19
  %24 = call i32 (...) @ssl_log_errors()
  %25 = load i32, i32* @EX_TEMPFAIL, align 4
  %26 = call i32 (i32, i8*, ...) @pjdlog_exitx(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %27

27:                                               ; preds = %2, %23
  %28 = call i32 (...) @ssl_log_errors()
  %29 = load i32, i32* @EX_TEMPFAIL, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i32, i8*, ...) @pjdlog_exitx(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %11, %12, %14, %27
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @SSL_get_error(i32*, i32) #1

declare dso_local i32 @pjdlog_debug(i32, i8*) #1

declare dso_local i32 @pjdlog_exitx(i32, i8*, ...) #1

declare dso_local i32 @ssl_log_errors(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
