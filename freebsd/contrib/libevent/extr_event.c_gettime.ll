; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i64, i32, i32, %struct.timeval }
%struct.timeval = type { i64 }

@CLOCK_SYNC_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_base*, %struct.timeval*)* @gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gettime(%struct.event_base* %0, %struct.timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca %struct.timeval, align 8
  store %struct.event_base* %0, %struct.event_base** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  %7 = load %struct.event_base*, %struct.event_base** %4, align 8
  %8 = call i32 @EVENT_BASE_ASSERT_LOCKED(%struct.event_base* %7)
  %9 = load %struct.event_base*, %struct.event_base** %4, align 8
  %10 = getelementptr inbounds %struct.event_base, %struct.event_base* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.timeval*, %struct.timeval** %5, align 8
  %16 = load %struct.event_base*, %struct.event_base** %4, align 8
  %17 = getelementptr inbounds %struct.event_base, %struct.event_base* %16, i32 0, i32 3
  %18 = bitcast %struct.timeval* %15 to i8*
  %19 = bitcast %struct.timeval* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 8, i1 false)
  store i32 0, i32* %3, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load %struct.event_base*, %struct.event_base** %4, align 8
  %22 = getelementptr inbounds %struct.event_base, %struct.event_base* %21, i32 0, i32 2
  %23 = load %struct.timeval*, %struct.timeval** %5, align 8
  %24 = call i32 @evutil_gettime_monotonic_(i32* %22, %struct.timeval* %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %49

27:                                               ; preds = %20
  %28 = load %struct.event_base*, %struct.event_base** %4, align 8
  %29 = getelementptr inbounds %struct.event_base, %struct.event_base* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CLOCK_SYNC_INTERVAL, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.timeval*, %struct.timeval** %5, align 8
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %27
  %38 = call i32 @evutil_gettimeofday(%struct.timeval* %6, i32* null)
  %39 = load %struct.timeval*, %struct.timeval** %5, align 8
  %40 = load %struct.event_base*, %struct.event_base** %4, align 8
  %41 = getelementptr inbounds %struct.event_base, %struct.event_base* %40, i32 0, i32 1
  %42 = call i32 @evutil_timersub(%struct.timeval* %6, %struct.timeval* %39, i32* %41)
  %43 = load %struct.timeval*, %struct.timeval** %5, align 8
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.event_base*, %struct.event_base** %4, align 8
  %47 = getelementptr inbounds %struct.event_base, %struct.event_base* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %37, %27
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %26, %14
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @EVENT_BASE_ASSERT_LOCKED(%struct.event_base*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @evutil_gettime_monotonic_(i32*, %struct.timeval*) #1

declare dso_local i32 @evutil_gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @evutil_timersub(%struct.timeval*, %struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
