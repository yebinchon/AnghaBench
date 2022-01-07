; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil_time.c_evutil_gettimeofday.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil_time.c_evutil_gettimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32 }
%union.anon = type { i32 }

@EPOCH_BIAS = common dso_local global i32 0, align 4
@UNITS_PER_SEC = common dso_local global i32 0, align 4
@UNITS_PER_USEC = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evutil_gettimeofday(%struct.timeval* %0, %struct.timezone* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct.timezone*, align 8
  %6 = alloca %union.anon, align 4
  store %struct.timeval* %0, %struct.timeval** %4, align 8
  store %struct.timezone* %1, %struct.timezone** %5, align 8
  %7 = load %struct.timeval*, %struct.timeval** %4, align 8
  %8 = icmp eq %struct.timeval* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %40

10:                                               ; preds = %2
  %11 = bitcast %union.anon* %6 to i32*
  %12 = call i32 @GetSystemTimeAsFileTime(i32* %11)
  %13 = bitcast %union.anon* %6 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 116444736000000000
  %17 = zext i1 %16 to i32
  %18 = call i64 @EVUTIL_UNLIKELY(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %40

21:                                               ; preds = %10
  %22 = bitcast %union.anon* %6 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 %24, 116444736000000000
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %22, align 4
  %27 = bitcast %union.anon* %6 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %29, 10000000
  %31 = load %struct.timeval*, %struct.timeval** %4, align 8
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = bitcast %union.anon* %6 to i32*
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = udiv i64 %35, 10
  %37 = urem i64 %36, 1000000
  %38 = load %struct.timeval*, %struct.timeval** %4, align 8
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %21, %20, %9
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @GetSystemTimeAsFileTime(i32*) #1

declare dso_local i64 @EVUTIL_UNLIKELY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
