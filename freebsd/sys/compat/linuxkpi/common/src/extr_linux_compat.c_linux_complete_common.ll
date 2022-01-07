; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_complete_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_complete_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.completion = type { i64 }

@UINT_MAX = common dso_local global i64 0, align 8
@SLEEPQ_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linux_complete_common(%struct.completion* %0, i32 %1) #0 {
  %3 = alloca %struct.completion*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.completion* %0, %struct.completion** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.completion*, %struct.completion** %3, align 8
  %7 = call i32 @sleepq_lock(%struct.completion* %6)
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i64, i64* @UINT_MAX, align 8
  %12 = load %struct.completion*, %struct.completion** %3, align 8
  %13 = getelementptr inbounds %struct.completion, %struct.completion* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.completion*, %struct.completion** %3, align 8
  %15 = load i32, i32* @SLEEPQ_SLEEP, align 4
  %16 = call i32 @sleepq_broadcast(%struct.completion* %14, i32 %15, i32 0, i32 0)
  store i32 %16, i32* %5, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.completion*, %struct.completion** %3, align 8
  %19 = getelementptr inbounds %struct.completion, %struct.completion* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UINT_MAX, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.completion*, %struct.completion** %3, align 8
  %25 = getelementptr inbounds %struct.completion, %struct.completion* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  br label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.completion*, %struct.completion** %3, align 8
  %30 = load i32, i32* @SLEEPQ_SLEEP, align 4
  %31 = call i32 @sleepq_signal(%struct.completion* %29, i32 %30, i32 0, i32 0)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %10
  %33 = load %struct.completion*, %struct.completion** %3, align 8
  %34 = call i32 @sleepq_release(%struct.completion* %33)
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (...) @kick_proc0()
  br label %39

39:                                               ; preds = %37, %32
  ret void
}

declare dso_local i32 @sleepq_lock(%struct.completion*) #1

declare dso_local i32 @sleepq_broadcast(%struct.completion*, i32, i32, i32) #1

declare dso_local i32 @sleepq_signal(%struct.completion*, i32, i32, i32) #1

declare dso_local i32 @sleepq_release(%struct.completion*) #1

declare dso_local i32 @kick_proc0(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
