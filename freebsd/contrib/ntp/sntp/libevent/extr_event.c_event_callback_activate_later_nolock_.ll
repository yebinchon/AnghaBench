; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_callback_activate_later_nolock_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_callback_activate_later_nolock_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.event_callback = type { i32 }

@EVLIST_ACTIVE = common dso_local global i32 0, align 4
@EVLIST_ACTIVE_LATER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @event_callback_activate_later_nolock_(%struct.event_base* %0, %struct.event_callback* %1) #0 {
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca %struct.event_callback*, align 8
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  store %struct.event_callback* %1, %struct.event_callback** %4, align 8
  %5 = load %struct.event_callback*, %struct.event_callback** %4, align 8
  %6 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @EVLIST_ACTIVE, align 4
  %9 = load i32, i32* @EVLIST_ACTIVE_LATER, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.event_base*, %struct.event_base** %3, align 8
  %16 = load %struct.event_callback*, %struct.event_callback** %4, align 8
  %17 = call i32 @event_queue_insert_active_later(%struct.event_base* %15, %struct.event_callback* %16)
  %18 = load %struct.event_base*, %struct.event_base** %3, align 8
  %19 = call i64 @EVBASE_NEED_NOTIFY(%struct.event_base* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.event_base*, %struct.event_base** %3, align 8
  %23 = call i32 @evthread_notify_base(%struct.event_base* %22)
  br label %24

24:                                               ; preds = %13, %21, %14
  ret void
}

declare dso_local i32 @event_queue_insert_active_later(%struct.event_base*, %struct.event_callback*) #1

declare dso_local i64 @EVBASE_NEED_NOTIFY(%struct.event_base*) #1

declare dso_local i32 @evthread_notify_base(%struct.event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
