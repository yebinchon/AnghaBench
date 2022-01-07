; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_timespec_get.c_timespec_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_timespec_get.c_timespec_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timespec_get(%struct.timespec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %14 [
    i32 128, label %7
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @CLOCK_REALTIME, align 4
  %9 = load %struct.timespec*, %struct.timespec** %4, align 8
  %10 = call i32 @clock_gettime(i32 %8, %struct.timespec* %9)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %17

13:                                               ; preds = %7
  br label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %17

15:                                               ; preds = %13
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %15, %14, %12
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
