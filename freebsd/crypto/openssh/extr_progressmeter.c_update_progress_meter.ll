; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_progressmeter.c_update_progress_meter.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_progressmeter.c_update_progress_meter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@win_resized = common dso_local global i64 0, align 8
@SIGALRM = common dso_local global i32 0, align 4
@UPDATE_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @update_progress_meter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_progress_meter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @errno, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i64, i64* @win_resized, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (...) @setscreensize()
  store i64 0, i64* @win_resized, align 8
  br label %9

9:                                                ; preds = %7, %1
  %10 = call i64 (...) @can_output()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 (...) @refresh_progress_meter()
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i32, i32* @SIGALRM, align 4
  %16 = call i32 @signal(i32 %15, void (i32)* @update_progress_meter)
  %17 = load i32, i32* @UPDATE_INTERVAL, align 4
  %18 = call i32 @alarm(i32 %17)
  %19 = load i32, i32* %3, align 4
  store i32 %19, i32* @errno, align 4
  ret void
}

declare dso_local i32 @setscreensize(...) #1

declare dso_local i64 @can_output(...) #1

declare dso_local i32 @refresh_progress_meter(...) #1

declare dso_local i32 @signal(i32, void (i32)*) #1

declare dso_local i32 @alarm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
