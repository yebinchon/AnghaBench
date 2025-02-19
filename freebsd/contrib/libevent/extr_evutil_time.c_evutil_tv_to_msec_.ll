; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil_time.c_evutil_tv_to_msec_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil_time.c_evutil_tv_to_msec_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@MAX_SECONDS_IN_MSEC_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @evutil_tv_to_msec_(%struct.timeval* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.timeval*, align 8
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  %4 = load %struct.timeval*, %struct.timeval** %3, align 8
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp sgt i32 %6, 1000000
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.timeval*, %struct.timeval** %3, align 8
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MAX_SECONDS_IN_MSEC_LONG, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %1
  store i64 -1, i64* %2, align 8
  br label %27

15:                                               ; preds = %8
  %16 = load %struct.timeval*, %struct.timeval** %3, align 8
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 1000
  %20 = load %struct.timeval*, %struct.timeval** %3, align 8
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 999
  %24 = sdiv i32 %23, 1000
  %25 = add nsw i32 %19, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %2, align 8
  br label %27

27:                                               ; preds = %15, %14
  %28 = load i64, i64* %2, align 8
  ret i64 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
