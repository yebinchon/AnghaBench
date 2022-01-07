; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_event_remove_timer_nolock_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_event_remove_timer_nolock_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32, %struct.TYPE_4__, %struct.event_base* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.event_base = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"event_remove_timer_nolock: event: %p\00", align 1
@EVLIST_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_remove_timer_nolock_(%struct.event* %0) #0 {
  %2 = alloca %struct.event*, align 8
  %3 = alloca %struct.event_base*, align 8
  store %struct.event* %0, %struct.event** %2, align 8
  %4 = load %struct.event*, %struct.event** %2, align 8
  %5 = getelementptr inbounds %struct.event, %struct.event* %4, i32 0, i32 2
  %6 = load %struct.event_base*, %struct.event_base** %5, align 8
  store %struct.event_base* %6, %struct.event_base** %3, align 8
  %7 = load %struct.event_base*, %struct.event_base** %3, align 8
  %8 = call i32 @EVENT_BASE_ASSERT_LOCKED(%struct.event_base* %7)
  %9 = load %struct.event*, %struct.event** %2, align 8
  %10 = call i32 @event_debug_assert_is_setup_(%struct.event* %9)
  %11 = load %struct.event*, %struct.event** %2, align 8
  %12 = bitcast %struct.event* %11 to i8*
  %13 = call i32 @event_debug(i8* %12)
  %14 = load %struct.event*, %struct.event** %2, align 8
  %15 = getelementptr inbounds %struct.event, %struct.event* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @EVLIST_TIMEOUT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.event_base*, %struct.event_base** %3, align 8
  %22 = load %struct.event*, %struct.event** %2, align 8
  %23 = call i32 @event_queue_remove_timeout(%struct.event_base* %21, %struct.event* %22)
  %24 = load %struct.event*, %struct.event** %2, align 8
  %25 = getelementptr inbounds %struct.event, %struct.event* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @evutil_timerclear(i32* %27)
  br label %29

29:                                               ; preds = %20, %1
  ret i32 0
}

declare dso_local i32 @EVENT_BASE_ASSERT_LOCKED(%struct.event_base*) #1

declare dso_local i32 @event_debug_assert_is_setup_(%struct.event*) #1

declare dso_local i32 @event_debug(i8*) #1

declare dso_local i32 @event_queue_remove_timeout(%struct.event_base*, %struct.event*) #1

declare dso_local i32 @evutil_timerclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
