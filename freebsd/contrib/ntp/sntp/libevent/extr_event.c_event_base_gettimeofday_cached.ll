; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_base_gettimeofday_cached.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_base_gettimeofday_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.timeval = type { i32 }

@current_base = common dso_local global %struct.event_base* null, align 8
@th_base_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_base_gettimeofday_cached(%struct.event_base* %0, %struct.timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  %7 = load %struct.event_base*, %struct.event_base** %4, align 8
  %8 = icmp ne %struct.event_base* %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load %struct.event_base*, %struct.event_base** @current_base, align 8
  store %struct.event_base* %10, %struct.event_base** %4, align 8
  %11 = load %struct.event_base*, %struct.event_base** @current_base, align 8
  %12 = icmp ne %struct.event_base* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load %struct.timeval*, %struct.timeval** %5, align 8
  %15 = call i32 @evutil_gettimeofday(%struct.timeval* %14, i32* null)
  store i32 %15, i32* %3, align 4
  br label %41

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16, %2
  %18 = load %struct.event_base*, %struct.event_base** %4, align 8
  %19 = load i32, i32* @th_base_lock, align 4
  %20 = call i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base* %18, i32 %19)
  %21 = load %struct.event_base*, %struct.event_base** %4, align 8
  %22 = getelementptr inbounds %struct.event_base, %struct.event_base* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.timeval*, %struct.timeval** %5, align 8
  %28 = call i32 @evutil_gettimeofday(%struct.timeval* %27, i32* null)
  store i32 %28, i32* %6, align 4
  br label %36

29:                                               ; preds = %17
  %30 = load %struct.event_base*, %struct.event_base** %4, align 8
  %31 = getelementptr inbounds %struct.event_base, %struct.event_base* %30, i32 0, i32 1
  %32 = load %struct.event_base*, %struct.event_base** %4, align 8
  %33 = getelementptr inbounds %struct.event_base, %struct.event_base* %32, i32 0, i32 0
  %34 = load %struct.timeval*, %struct.timeval** %5, align 8
  %35 = call i32 @evutil_timeradd(%struct.TYPE_2__* %31, i32* %33, %struct.timeval* %34)
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %29, %26
  %37 = load %struct.event_base*, %struct.event_base** %4, align 8
  %38 = load i32, i32* @th_base_lock, align 4
  %39 = call i32 @EVBASE_RELEASE_LOCK(%struct.event_base* %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @evutil_gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base*, i32) #1

declare dso_local i32 @evutil_timeradd(%struct.TYPE_2__*, i32*, %struct.timeval*) #1

declare dso_local i32 @EVBASE_RELEASE_LOCK(%struct.event_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
