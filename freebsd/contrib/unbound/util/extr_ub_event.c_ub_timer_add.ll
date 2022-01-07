; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event.c_ub_timer_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event.c_ub_timer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_event = type { i32 }
%struct.ub_event_base = type { i32 }
%struct.timeval = type { i32 }

@EV_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_timer_add(%struct.ub_event* %0, %struct.ub_event_base* %1, void (i32, i16, i8*)* %2, i8* %3, %struct.timeval* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ub_event*, align 8
  %8 = alloca %struct.ub_event_base*, align 8
  %9 = alloca void (i32, i16, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.timeval*, align 8
  store %struct.ub_event* %0, %struct.ub_event** %7, align 8
  store %struct.ub_event_base* %1, %struct.ub_event_base** %8, align 8
  store void (i32, i16, i8*)* %2, void (i32, i16, i8*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.timeval* %4, %struct.timeval** %11, align 8
  %12 = load %struct.ub_event*, %struct.ub_event** %7, align 8
  %13 = call i32 @AS_EVENT(%struct.ub_event* %12)
  %14 = load i32, i32* @EV_TIMEOUT, align 4
  %15 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %9, align 8
  %16 = call i32 @NATIVE_BITS_CB(void (i32, i16, i8*)* %15)
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @event_set(i32 %13, i32 -1, i32 %14, i32 %16, i8* %17)
  %19 = load %struct.ub_event_base*, %struct.ub_event_base** %8, align 8
  %20 = call i32 @AS_EVENT_BASE(%struct.ub_event_base* %19)
  %21 = load %struct.ub_event*, %struct.ub_event** %7, align 8
  %22 = call i32 @AS_EVENT(%struct.ub_event* %21)
  %23 = call i64 @event_base_set(i32 %20, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %31

26:                                               ; preds = %5
  %27 = load %struct.ub_event*, %struct.ub_event** %7, align 8
  %28 = call i32 @AS_EVENT(%struct.ub_event* %27)
  %29 = load %struct.timeval*, %struct.timeval** %11, align 8
  %30 = call i32 @evtimer_add(i32 %28, %struct.timeval* %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %26, %25
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @event_set(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @AS_EVENT(%struct.ub_event*) #1

declare dso_local i32 @NATIVE_BITS_CB(void (i32, i16, i8*)*) #1

declare dso_local i64 @event_base_set(i32, i32) #1

declare dso_local i32 @AS_EVENT_BASE(%struct.ub_event_base*) #1

declare dso_local i32 @evtimer_add(i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
