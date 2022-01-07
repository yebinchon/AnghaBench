; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_msyslog.c_init_logging.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_msyslog.c_init_logging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_logging.was_daemon = internal global i32 0, align 4
@INIT_NTP_SYSLOGMASK = common dso_local global i64 0, align 8
@ntp_syslogmask = common dso_local global i64 0, align 8
@DIR_SEP = common dso_local global i8 0, align 1
@progname = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@LOG_NTP = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_logging(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @INIT_NTP_SYSLOGMASK, align 8
  %10 = load i64, i64* @ntp_syslogmask, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 0, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* @ntp_syslogmask, align 8
  br label %17

17:                                               ; preds = %15, %12, %3
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* @DIR_SEP, align 1
  %20 = call i8* @strrchr(i8* %18, i8 signext %19)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp eq i8* null, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i8*, i8** %4, align 8
  store i8* %24, i8** %8, align 8
  br label %28

25:                                               ; preds = %17
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %8, align 8
  br label %28

28:                                               ; preds = %25, %23
  %29 = load i8*, i8** %8, align 8
  %30 = call i8* @estrdup(i8* %29)
  store i8* %30, i8** @progname, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* @init_logging.was_daemon, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i8*, i8** @progname, align 8
  %37 = load i32, i32* @LOG_PID, align 4
  %38 = call i32 (i8*, i32, ...) @openlog(i8* %36, i32 %37)
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @openlog(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
