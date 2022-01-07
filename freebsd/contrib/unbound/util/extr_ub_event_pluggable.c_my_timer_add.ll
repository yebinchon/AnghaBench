; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_my_timer_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_my_timer_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_event = type { i32 }
%struct.ub_event_base = type { i32 }
%struct.timeval = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EV_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ub_event*, %struct.ub_event_base*, void (i32, i16, i8*)*, i8*, %struct.timeval*)* @my_timer_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_timer_add(%struct.ub_event* %0, %struct.ub_event_base* %1, void (i32, i16, i8*)* %2, i8* %3, %struct.timeval* %4) #0 {
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
  %13 = call %struct.TYPE_4__* @AS_MY_EVENT(%struct.ub_event* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* @EV_TIMEOUT, align 4
  %16 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %9, align 8
  %17 = call i32 @NATIVE_BITS_CB(void (i32, i16, i8*)* %16)
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @event_set(i32* %14, i32 -1, i32 %15, i32 %17, i8* %18)
  %20 = load %struct.ub_event_base*, %struct.ub_event_base** %8, align 8
  %21 = call %struct.TYPE_3__* @AS_MY_EVENT_BASE(%struct.ub_event_base* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ub_event*, %struct.ub_event** %7, align 8
  %25 = call %struct.TYPE_4__* @AS_MY_EVENT(%struct.ub_event* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i64 @event_base_set(i32 %23, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %36

30:                                               ; preds = %5
  %31 = load %struct.ub_event*, %struct.ub_event** %7, align 8
  %32 = call %struct.TYPE_4__* @AS_MY_EVENT(%struct.ub_event* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.timeval*, %struct.timeval** %11, align 8
  %35 = call i32 @evtimer_add(i32* %33, %struct.timeval* %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %30, %29
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @event_set(i32*, i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_4__* @AS_MY_EVENT(%struct.ub_event*) #1

declare dso_local i32 @NATIVE_BITS_CB(void (i32, i16, i8*)*) #1

declare dso_local i64 @event_base_set(i32, i32*) #1

declare dso_local %struct.TYPE_3__* @AS_MY_EVENT_BASE(%struct.ub_event_base*) #1

declare dso_local i32 @evtimer_add(i32*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
