; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_evmap_signal_del_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_evmap_signal_del_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { %struct.event_signal_map, %struct.eventop* }
%struct.event_signal_map = type { i32 }
%struct.eventop = type { i32 (%struct.event_base.0*, i32, i32, i32, i32*)* }
%struct.event_base.0 = type opaque
%struct.event = type { i32 }
%struct.evmap_signal = type { i32 }

@evmap_signal = common dso_local global i32 0, align 4
@ev_signal_next = common dso_local global i32 0, align 4
@EV_SIGNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evmap_signal_del_(%struct.event_base* %0, i32 %1, %struct.event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.event*, align 8
  %8 = alloca %struct.eventop*, align 8
  %9 = alloca %struct.event_signal_map*, align 8
  %10 = alloca %struct.evmap_signal*, align 8
  store %struct.event_base* %0, %struct.event_base** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.event* %2, %struct.event** %7, align 8
  %11 = load %struct.event_base*, %struct.event_base** %5, align 8
  %12 = getelementptr inbounds %struct.event_base, %struct.event_base* %11, i32 0, i32 1
  %13 = load %struct.eventop*, %struct.eventop** %12, align 8
  store %struct.eventop* %13, %struct.eventop** %8, align 8
  %14 = load %struct.event_base*, %struct.event_base** %5, align 8
  %15 = getelementptr inbounds %struct.event_base, %struct.event_base* %14, i32 0, i32 0
  store %struct.event_signal_map* %15, %struct.event_signal_map** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.event_signal_map*, %struct.event_signal_map** %9, align 8
  %18 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %50

22:                                               ; preds = %3
  %23 = load %struct.evmap_signal*, %struct.evmap_signal** %10, align 8
  %24 = load %struct.event_signal_map*, %struct.event_signal_map** %9, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @evmap_signal, align 4
  %27 = call i32 @GET_SIGNAL_SLOT(%struct.evmap_signal* %23, %struct.event_signal_map* %24, i32 %25, i32 %26)
  %28 = load %struct.event*, %struct.event** %7, align 8
  %29 = load i32, i32* @ev_signal_next, align 4
  %30 = call i32 @LIST_REMOVE(%struct.event* %28, i32 %29)
  %31 = load %struct.evmap_signal*, %struct.evmap_signal** %10, align 8
  %32 = getelementptr inbounds %struct.evmap_signal, %struct.evmap_signal* %31, i32 0, i32 0
  %33 = call i32* @LIST_FIRST(i32* %32)
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %22
  %36 = load %struct.eventop*, %struct.eventop** %8, align 8
  %37 = getelementptr inbounds %struct.eventop, %struct.eventop* %36, i32 0, i32 0
  %38 = load i32 (%struct.event_base.0*, i32, i32, i32, i32*)*, i32 (%struct.event_base.0*, i32, i32, i32, i32*)** %37, align 8
  %39 = load %struct.event_base*, %struct.event_base** %5, align 8
  %40 = bitcast %struct.event_base* %39 to %struct.event_base.0*
  %41 = load %struct.event*, %struct.event** %7, align 8
  %42 = getelementptr inbounds %struct.event, %struct.event* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @EV_SIGNAL, align 4
  %45 = call i32 %38(%struct.event_base.0* %40, i32 %43, i32 0, i32 %44, i32* null)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %50

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %22
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %47, %21
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @GET_SIGNAL_SLOT(%struct.evmap_signal*, %struct.event_signal_map*, i32, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.event*, i32) #1

declare dso_local i32* @LIST_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
