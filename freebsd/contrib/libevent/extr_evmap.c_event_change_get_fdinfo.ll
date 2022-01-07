; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evmap.c_event_change_get_fdinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evmap.c_event_change_get_fdinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_changelist_fdinfo = type opaque
%struct.event_base = type { i32, i32 }
%struct.event_change = type { i32, i32 }
%struct.evmap_signal = type { i32 }
%struct.evmap_io = type { i32 }

@EV_CHANGE_SIGNAL = common dso_local global i32 0, align 4
@evmap_signal = common dso_local global i32 0, align 4
@evmap_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_changelist_fdinfo* (%struct.event_base*, %struct.event_change*)* @event_change_get_fdinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_changelist_fdinfo* @event_change_get_fdinfo(%struct.event_base* %0, %struct.event_change* %1) #0 {
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca %struct.event_change*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.evmap_signal*, align 8
  %7 = alloca %struct.evmap_io*, align 8
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  store %struct.event_change* %1, %struct.event_change** %4, align 8
  %8 = load %struct.event_change*, %struct.event_change** %4, align 8
  %9 = getelementptr inbounds %struct.event_change, %struct.event_change* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @EV_CHANGE_SIGNAL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.evmap_signal*, %struct.evmap_signal** %6, align 8
  %16 = load %struct.event_base*, %struct.event_base** %3, align 8
  %17 = getelementptr inbounds %struct.event_base, %struct.event_base* %16, i32 0, i32 1
  %18 = load %struct.event_change*, %struct.event_change** %4, align 8
  %19 = getelementptr inbounds %struct.event_change, %struct.event_change* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @evmap_signal, align 4
  %22 = call i32 @GET_SIGNAL_SLOT(%struct.evmap_signal* %15, i32* %17, i32 %20, i32 %21)
  %23 = load %struct.evmap_signal*, %struct.evmap_signal** %6, align 8
  %24 = bitcast %struct.evmap_signal* %23 to i8*
  %25 = getelementptr inbounds i8, i8* %24, i64 4
  store i8* %25, i8** %5, align 8
  br label %38

26:                                               ; preds = %2
  %27 = load %struct.evmap_io*, %struct.evmap_io** %7, align 8
  %28 = load %struct.event_base*, %struct.event_base** %3, align 8
  %29 = getelementptr inbounds %struct.event_base, %struct.event_base* %28, i32 0, i32 0
  %30 = load %struct.event_change*, %struct.event_change** %4, align 8
  %31 = getelementptr inbounds %struct.event_change, %struct.event_change* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @evmap_io, align 4
  %34 = call i32 @GET_IO_SLOT(%struct.evmap_io* %27, i32* %29, i32 %32, i32 %33)
  %35 = load %struct.evmap_io*, %struct.evmap_io** %7, align 8
  %36 = bitcast %struct.evmap_io* %35 to i8*
  %37 = getelementptr inbounds i8, i8* %36, i64 4
  store i8* %37, i8** %5, align 8
  br label %38

38:                                               ; preds = %26, %14
  %39 = load i8*, i8** %5, align 8
  %40 = bitcast i8* %39 to %struct.event_changelist_fdinfo*
  ret %struct.event_changelist_fdinfo* %40
}

declare dso_local i32 @GET_SIGNAL_SLOT(%struct.evmap_signal*, i32*, i32, i32) #1

declare dso_local i32 @GET_IO_SLOT(%struct.evmap_io*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
