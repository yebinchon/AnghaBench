; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_event_base_get_running_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_event_base_get_running_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }
%struct.event_base = type { %struct.event_callback* }
%struct.event_callback = type { i32 }

@th_base_lock = common dso_local global i32 0, align 4
@EVLIST_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.event* @event_base_get_running_event(%struct.event_base* %0) #0 {
  %2 = alloca %struct.event_base*, align 8
  %3 = alloca %struct.event*, align 8
  %4 = alloca %struct.event_callback*, align 8
  store %struct.event_base* %0, %struct.event_base** %2, align 8
  store %struct.event* null, %struct.event** %3, align 8
  %5 = load %struct.event_base*, %struct.event_base** %2, align 8
  %6 = load i32, i32* @th_base_lock, align 4
  %7 = call i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base* %5, i32 %6)
  %8 = load %struct.event_base*, %struct.event_base** %2, align 8
  %9 = call i64 @EVBASE_IN_THREAD(%struct.event_base* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.event_base*, %struct.event_base** %2, align 8
  %13 = getelementptr inbounds %struct.event_base, %struct.event_base* %12, i32 0, i32 0
  %14 = load %struct.event_callback*, %struct.event_callback** %13, align 8
  store %struct.event_callback* %14, %struct.event_callback** %4, align 8
  %15 = load %struct.event_callback*, %struct.event_callback** %4, align 8
  %16 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @EVLIST_INIT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load %struct.event_callback*, %struct.event_callback** %4, align 8
  %23 = call %struct.event* @event_callback_to_event(%struct.event_callback* %22)
  store %struct.event* %23, %struct.event** %3, align 8
  br label %24

24:                                               ; preds = %21, %11
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.event_base*, %struct.event_base** %2, align 8
  %27 = load i32, i32* @th_base_lock, align 4
  %28 = call i32 @EVBASE_RELEASE_LOCK(%struct.event_base* %26, i32 %27)
  %29 = load %struct.event*, %struct.event** %3, align 8
  ret %struct.event* %29
}

declare dso_local i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base*, i32) #1

declare dso_local i64 @EVBASE_IN_THREAD(%struct.event_base*) #1

declare dso_local %struct.event* @event_callback_to_event(%struct.event_callback*) #1

declare dso_local i32 @EVBASE_RELEASE_LOCK(%struct.event_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
