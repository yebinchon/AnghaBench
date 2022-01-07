; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_evmap_signal_add_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_evmap_signal_add_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { %struct.eventop*, %struct.event_signal_map }
%struct.eventop = type { i32 (%struct.event_base.0*, i32, i32, i32, i32*)*, i32 }
%struct.event_base.0 = type opaque
%struct.event_signal_map = type { i32 }
%struct.event = type { i32 }
%struct.evmap_signal = type { i32 }

@evmap_signal = common dso_local global i32 0, align 4
@evmap_signal_init = common dso_local global i32 0, align 4
@EV_SIGNAL = common dso_local global i32 0, align 4
@ev_signal_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evmap_signal_add_(%struct.event_base* %0, i32 %1, %struct.event* %2) #0 {
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
  %12 = getelementptr inbounds %struct.event_base, %struct.event_base* %11, i32 0, i32 0
  %13 = load %struct.eventop*, %struct.eventop** %12, align 8
  store %struct.eventop* %13, %struct.eventop** %8, align 8
  %14 = load %struct.event_base*, %struct.event_base** %5, align 8
  %15 = getelementptr inbounds %struct.event_base, %struct.event_base* %14, i32 0, i32 1
  store %struct.event_signal_map* %15, %struct.event_signal_map** %9, align 8
  store %struct.evmap_signal* null, %struct.evmap_signal** %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.event_signal_map*, %struct.event_signal_map** %9, align 8
  %18 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load %struct.event_signal_map*, %struct.event_signal_map** %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @evmap_make_space(%struct.event_signal_map* %22, i32 %23, i32 8)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %64

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.evmap_signal*, %struct.evmap_signal** %10, align 8
  %30 = load %struct.event_signal_map*, %struct.event_signal_map** %9, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @evmap_signal, align 4
  %33 = load i32, i32* @evmap_signal_init, align 4
  %34 = load %struct.event_base*, %struct.event_base** %5, align 8
  %35 = getelementptr inbounds %struct.event_base, %struct.event_base* %34, i32 0, i32 0
  %36 = load %struct.eventop*, %struct.eventop** %35, align 8
  %37 = getelementptr inbounds %struct.eventop, %struct.eventop* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @GET_SIGNAL_SLOT_AND_CTOR(%struct.evmap_signal* %29, %struct.event_signal_map* %30, i32 %31, i32 %32, i32 %33, i32 %38)
  %40 = load %struct.evmap_signal*, %struct.evmap_signal** %10, align 8
  %41 = getelementptr inbounds %struct.evmap_signal, %struct.evmap_signal* %40, i32 0, i32 0
  %42 = call i64 @LIST_EMPTY(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %28
  %45 = load %struct.eventop*, %struct.eventop** %8, align 8
  %46 = getelementptr inbounds %struct.eventop, %struct.eventop* %45, i32 0, i32 0
  %47 = load i32 (%struct.event_base.0*, i32, i32, i32, i32*)*, i32 (%struct.event_base.0*, i32, i32, i32, i32*)** %46, align 8
  %48 = load %struct.event_base*, %struct.event_base** %5, align 8
  %49 = bitcast %struct.event_base* %48 to %struct.event_base.0*
  %50 = load %struct.event*, %struct.event** %7, align 8
  %51 = getelementptr inbounds %struct.event, %struct.event* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @EV_SIGNAL, align 4
  %54 = call i32 %47(%struct.event_base.0* %49, i32 %52, i32 0, i32 %53, i32* null)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %64

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57, %28
  %59 = load %struct.evmap_signal*, %struct.evmap_signal** %10, align 8
  %60 = getelementptr inbounds %struct.evmap_signal, %struct.evmap_signal* %59, i32 0, i32 0
  %61 = load %struct.event*, %struct.event** %7, align 8
  %62 = load i32, i32* @ev_signal_next, align 4
  %63 = call i32 @LIST_INSERT_HEAD(i32* %60, %struct.event* %61, i32 %62)
  store i32 1, i32* %4, align 4
  br label %64

64:                                               ; preds = %58, %56, %26
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @evmap_make_space(%struct.event_signal_map*, i32, i32) #1

declare dso_local i32 @GET_SIGNAL_SLOT_AND_CTOR(%struct.evmap_signal*, %struct.event_signal_map*, i32, i32, i32, i32) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
