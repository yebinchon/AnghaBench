; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_pjdlog.c_pjdlog_mode_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_pjdlog.c_pjdlog_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pjdlog_initialized = common dso_local global i64 0, align 8
@PJDLOG_INITIALIZED = common dso_local global i64 0, align 8
@PJDLOG_MODE_STD = common dso_local global i32 0, align 4
@PJDLOG_MODE_SYSLOG = common dso_local global i32 0, align 4
@pjdlog_mode = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pjdlog_mode_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @pjdlog_initialized, align 8
  %5 = load i64, i64* @PJDLOG_INITIALIZED, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @PJDLOG_MODE_STD, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @PJDLOG_MODE_SYSLOG, align 4
  %15 = icmp eq i32 %13, %14
  br label %16

16:                                               ; preds = %12, %1
  %17 = phi i1 [ true, %1 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* @pjdlog_mode, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %40

24:                                               ; preds = %16
  %25 = load i32, i32* @errno, align 4
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @PJDLOG_MODE_SYSLOG, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @LOG_PID, align 4
  %31 = load i32, i32* @LOG_NDELAY, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @LOG_DAEMON, align 4
  %34 = call i32 @openlog(i32* null, i32 %32, i32 %33)
  br label %37

35:                                               ; preds = %24
  %36 = call i32 (...) @closelog()
  br label %37

37:                                               ; preds = %35, %29
  %38 = load i32, i32* %2, align 4
  store i32 %38, i32* @pjdlog_mode, align 4
  %39 = load i32, i32* %3, align 4
  store i32 %39, i32* @errno, align 4
  br label %40

40:                                               ; preds = %37, %23
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @openlog(i32*, i32, i32) #1

declare dso_local i32 @closelog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
