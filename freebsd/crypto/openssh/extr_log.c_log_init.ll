; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_log.c_log_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_log.c_log_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.syslog_data = type { i32 }

@argv0 = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unrecognized internal syslog level code %d\0A\00", align 1
@log_handler = common dso_local global i32* null, align 8
@log_handler_ctx = common dso_local global i32* null, align 8
@log_on_stderr = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@log_facility = common dso_local global i32 0, align 4
@LOG_USER = common dso_local global i32 0, align 4
@LOG_AUTH = common dso_local global i32 0, align 4
@LOG_LOCAL0 = common dso_local global i32 0, align 4
@LOG_LOCAL1 = common dso_local global i32 0, align 4
@LOG_LOCAL2 = common dso_local global i32 0, align 4
@LOG_LOCAL3 = common dso_local global i32 0, align 4
@LOG_LOCAL4 = common dso_local global i32 0, align 4
@LOG_LOCAL5 = common dso_local global i32 0, align 4
@LOG_LOCAL6 = common dso_local global i32 0, align 4
@LOG_LOCAL7 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Unrecognized internal syslog facility code %d\0A\00", align 1
@__progname = common dso_local global i8* null, align 8
@LOG_PID = common dso_local global i32 0, align 4
@LOG_AUTHPRIV = common dso_local global i32 0, align 4
@SYSLOG_DATA_INIT = common dso_local global %struct.syslog_data zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_init(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  store i8* %9, i8** @argv0, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @log_change_level(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load i32, i32* @stderr, align 4
  %15 = load i64, i64* %6, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %4
  store i32* null, i32** @log_handler, align 8
  store i32* null, i32** @log_handler_ctx, align 8
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* @log_on_stderr, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %66

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %48 [
    i32 137, label %26
    i32 128, label %28
    i32 139, label %30
    i32 136, label %32
    i32 135, label %34
    i32 134, label %36
    i32 133, label %38
    i32 132, label %40
    i32 131, label %42
    i32 130, label %44
    i32 129, label %46
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @LOG_DAEMON, align 4
  store i32 %27, i32* @log_facility, align 4
  br label %53

28:                                               ; preds = %24
  %29 = load i32, i32* @LOG_USER, align 4
  store i32 %29, i32* @log_facility, align 4
  br label %53

30:                                               ; preds = %24
  %31 = load i32, i32* @LOG_AUTH, align 4
  store i32 %31, i32* @log_facility, align 4
  br label %53

32:                                               ; preds = %24
  %33 = load i32, i32* @LOG_LOCAL0, align 4
  store i32 %33, i32* @log_facility, align 4
  br label %53

34:                                               ; preds = %24
  %35 = load i32, i32* @LOG_LOCAL1, align 4
  store i32 %35, i32* @log_facility, align 4
  br label %53

36:                                               ; preds = %24
  %37 = load i32, i32* @LOG_LOCAL2, align 4
  store i32 %37, i32* @log_facility, align 4
  br label %53

38:                                               ; preds = %24
  %39 = load i32, i32* @LOG_LOCAL3, align 4
  store i32 %39, i32* @log_facility, align 4
  br label %53

40:                                               ; preds = %24
  %41 = load i32, i32* @LOG_LOCAL4, align 4
  store i32 %41, i32* @log_facility, align 4
  br label %53

42:                                               ; preds = %24
  %43 = load i32, i32* @LOG_LOCAL5, align 4
  store i32 %43, i32* @log_facility, align 4
  br label %53

44:                                               ; preds = %24
  %45 = load i32, i32* @LOG_LOCAL6, align 4
  store i32 %45, i32* @log_facility, align 4
  br label %53

46:                                               ; preds = %24
  %47 = load i32, i32* @LOG_LOCAL7, align 4
  store i32 %47, i32* @log_facility, align 4
  br label %53

48:                                               ; preds = %24
  %49 = load i32, i32* @stderr, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = call i32 @exit(i32 1) #3
  unreachable

53:                                               ; preds = %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26
  %54 = load i8*, i8** @argv0, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i8*, i8** @argv0, align 8
  br label %60

58:                                               ; preds = %53
  %59 = load i8*, i8** @__progname, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i8* [ %57, %56 ], [ %59, %58 ]
  %62 = load i32, i32* @LOG_PID, align 4
  %63 = load i32, i32* @log_facility, align 4
  %64 = call i32 @openlog(i8* %61, i32 %62, i32 %63)
  %65 = call i32 (...) @closelog()
  br label %66

66:                                               ; preds = %60, %23
  ret void
}

declare dso_local i64 @log_change_level(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @openlog(i8*, i32, i32) #1

declare dso_local i32 @closelog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
