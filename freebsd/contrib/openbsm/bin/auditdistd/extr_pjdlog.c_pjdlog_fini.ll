; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_pjdlog.c_pjdlog_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_pjdlog.c_pjdlog_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pjdlog_initialized = common dso_local global i64 0, align 8
@PJDLOG_INITIALIZED = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@pjdlog_mode = common dso_local global i64 0, align 8
@PJDLOG_MODE_SYSLOG = common dso_local global i64 0, align 8
@PJDLOG_NOT_INITIALIZED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pjdlog_fini() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @pjdlog_initialized, align 8
  %3 = load i64, i64* @PJDLOG_INITIALIZED, align 8
  %4 = icmp eq i64 %2, %3
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load i32, i32* @errno, align 4
  store i32 %7, i32* %1, align 4
  %8 = load i64, i64* @pjdlog_mode, align 8
  %9 = load i64, i64* @PJDLOG_MODE_SYSLOG, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 (...) @closelog()
  br label %13

13:                                               ; preds = %11, %0
  %14 = load i64, i64* @PJDLOG_NOT_INITIALIZED, align 8
  store i64 %14, i64* @pjdlog_initialized, align 8
  %15 = load i32, i32* %1, align 4
  store i32 %15, i32* @errno, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @closelog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
