; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_abortcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_abortcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_output = common dso_local global i64 0, align 8
@stdout = common dso_local global i64 0, align 8
@stderr = common dso_local global i64 0, align 8
@jump = common dso_local global i64 0, align 8
@interrupt_buf = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @abortcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abortcmd() #0 {
  %1 = load i64, i64* @current_output, align 8
  %2 = load i64, i64* @stdout, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i64, i64* @stdout, align 8
  %6 = call i32 @fflush(i64 %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i64, i64* @stderr, align 8
  %9 = call i32 @putc(i8 signext 10, i64 %8)
  %10 = load i64, i64* @stderr, align 8
  %11 = call i32 @fflush(i64 %10)
  %12 = load i64, i64* @jump, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  store i64 0, i64* @jump, align 8
  %15 = load i32, i32* @interrupt_buf, align 4
  %16 = call i32 @LONGJMP(i32 %15, i32 1)
  br label %17

17:                                               ; preds = %14, %7
  %18 = load i32, i32* @TRUE, align 4
  ret i32 %18
}

declare dso_local i32 @fflush(i64) #1

declare dso_local i32 @putc(i8 signext, i64) #1

declare dso_local i32 @LONGJMP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
