; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_cancel.c__thr_cancel_enter2.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_cancel.c__thr_cancel_enter2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32, i32 }

@PTHREAD_CANCELED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_thr_cancel_enter2(%struct.pthread* %0, i32 %1) #0 {
  %3 = alloca %struct.pthread*, align 8
  %4 = alloca i32, align 4
  store %struct.pthread* %0, %struct.pthread** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.pthread*, %struct.pthread** %3, align 8
  %6 = getelementptr inbounds %struct.pthread, %struct.pthread* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = load %struct.pthread*, %struct.pthread** %3, align 8
  %8 = call i64 @SHOULD_CANCEL(%struct.pthread* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.pthread*, %struct.pthread** %3, align 8
  %12 = call i32 @THR_IN_CRITICAL(%struct.pthread* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i1 [ false, %2 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @__predict_false(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load %struct.pthread*, %struct.pthread** %3, align 8
  %25 = getelementptr inbounds %struct.pthread, %struct.pthread* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @thr_wake(i32 %26)
  br label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @PTHREAD_CANCELED, align 4
  %30 = call i32 @_pthread_exit(i32 %29)
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %31, %15
  ret void
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i64 @SHOULD_CANCEL(%struct.pthread*) #1

declare dso_local i32 @THR_IN_CRITICAL(%struct.pthread*) #1

declare dso_local i32 @thr_wake(i32) #1

declare dso_local i32 @_pthread_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
