; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_gettime_monotonic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_gettime_monotonic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.timeval = type { i32 }

@th_base_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_gettime_monotonic(%struct.event_base* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  store i32 -1, i32* %5, align 4
  %6 = load %struct.event_base*, %struct.event_base** %3, align 8
  %7 = icmp ne %struct.event_base* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = load %struct.timeval*, %struct.timeval** %4, align 8
  %10 = icmp ne %struct.timeval* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load %struct.event_base*, %struct.event_base** %3, align 8
  %13 = load i32, i32* @th_base_lock, align 4
  %14 = call i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base* %12, i32 %13)
  %15 = load %struct.event_base*, %struct.event_base** %3, align 8
  %16 = getelementptr inbounds %struct.event_base, %struct.event_base* %15, i32 0, i32 0
  %17 = load %struct.timeval*, %struct.timeval** %4, align 8
  %18 = call i32 @evutil_gettime_monotonic_(i32* %16, %struct.timeval* %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.event_base*, %struct.event_base** %3, align 8
  %20 = load i32, i32* @th_base_lock, align 4
  %21 = call i32 @EVBASE_RELEASE_LOCK(%struct.event_base* %19, i32 %20)
  br label %22

22:                                               ; preds = %11, %8, %2
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base*, i32) #1

declare dso_local i32 @evutil_gettime_monotonic_(i32*, %struct.timeval*) #1

declare dso_local i32 @EVBASE_RELEASE_LOCK(%struct.event_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
