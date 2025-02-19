; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/extr_t_sleep.c_do_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/gen/extr_t_sleep.c_do_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.timeval = type { i32 }

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_select(%struct.timespec* %0, %struct.timespec* %1) #0 {
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 4
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %7 = load %struct.timespec*, %struct.timespec** %3, align 8
  %8 = call i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval* %6, %struct.timespec* %7)
  %9 = call i32 @select(i32 0, i32* null, i32* null, i32* null, %struct.timeval* %6)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i64, i64* @errno, align 8
  %13 = load i64, i64* @EINTR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %18

16:                                               ; preds = %11
  %17 = load i64, i64* @errno, align 8
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i64 [ 0, %15 ], [ %17, %16 ]
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval*, %struct.timespec*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
