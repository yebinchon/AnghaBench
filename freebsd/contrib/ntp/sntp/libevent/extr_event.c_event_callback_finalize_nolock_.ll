; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_callback_finalize_nolock_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_callback_finalize_nolock_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.event_callback = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { void (%struct.event_callback.0*, i8*)* }
%struct.event_callback.0 = type opaque
%struct.event = type { i32 }

@EVLIST_INIT = common dso_local global i32 0, align 4
@EVENT_DEL_NOBLOCK = common dso_local global i32 0, align 4
@EV_CLOSURE_CB_FINALIZE = common dso_local global i32 0, align 4
@EVLIST_FINALIZING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @event_callback_finalize_nolock_(%struct.event_base* %0, i32 %1, %struct.event_callback* %2, void (%struct.event_callback*, i8*)* %3) #0 {
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.event_callback*, align 8
  %8 = alloca void (%struct.event_callback*, i8*)*, align 8
  %9 = alloca %struct.event*, align 8
  store %struct.event_base* %0, %struct.event_base** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.event_callback* %2, %struct.event_callback** %7, align 8
  store void (%struct.event_callback*, i8*)* %3, void (%struct.event_callback*, i8*)** %8, align 8
  store %struct.event* null, %struct.event** %9, align 8
  %10 = load %struct.event_callback*, %struct.event_callback** %7, align 8
  %11 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @EVLIST_INIT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.event_callback*, %struct.event_callback** %7, align 8
  %18 = call %struct.event* @event_callback_to_event(%struct.event_callback* %17)
  store %struct.event* %18, %struct.event** %9, align 8
  %19 = load %struct.event*, %struct.event** %9, align 8
  %20 = load i32, i32* @EVENT_DEL_NOBLOCK, align 4
  %21 = call i32 @event_del_nolock_(%struct.event* %19, i32 %20)
  br label %26

22:                                               ; preds = %4
  %23 = load %struct.event_base*, %struct.event_base** %5, align 8
  %24 = load %struct.event_callback*, %struct.event_callback** %7, align 8
  %25 = call i32 @event_callback_cancel_nolock_(%struct.event_base* %23, %struct.event_callback* %24, i32 0)
  br label %26

26:                                               ; preds = %22, %16
  %27 = load i32, i32* @EV_CLOSURE_CB_FINALIZE, align 4
  %28 = load %struct.event_callback*, %struct.event_callback** %7, align 8
  %29 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load void (%struct.event_callback*, i8*)*, void (%struct.event_callback*, i8*)** %8, align 8
  %31 = bitcast void (%struct.event_callback*, i8*)* %30 to void (%struct.event_callback.0*, i8*)*
  %32 = load %struct.event_callback*, %struct.event_callback** %7, align 8
  %33 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store void (%struct.event_callback.0*, i8*)* %31, void (%struct.event_callback.0*, i8*)** %34, align 8
  %35 = load %struct.event_base*, %struct.event_base** %5, align 8
  %36 = load %struct.event_callback*, %struct.event_callback** %7, align 8
  %37 = call i32 @event_callback_activate_nolock_(%struct.event_base* %35, %struct.event_callback* %36)
  %38 = load i32, i32* @EVLIST_FINALIZING, align 4
  %39 = load %struct.event_callback*, %struct.event_callback** %7, align 8
  %40 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  ret void
}

declare dso_local %struct.event* @event_callback_to_event(%struct.event_callback*) #1

declare dso_local i32 @event_del_nolock_(%struct.event*, i32) #1

declare dso_local i32 @event_callback_cancel_nolock_(%struct.event_base*, %struct.event_callback*, i32) #1

declare dso_local i32 @event_callback_activate_nolock_(%struct.event_base*, %struct.event_callback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
