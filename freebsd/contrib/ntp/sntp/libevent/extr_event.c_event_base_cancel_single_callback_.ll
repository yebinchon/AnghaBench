; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_base_cancel_single_callback_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_base_cancel_single_callback_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.event_callback = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.event_callback.0*, i32)* }
%struct.event_callback.0 = type opaque
%struct.event = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.event.1*, i32)* }
%struct.event.1 = type opaque

@EVLIST_INIT = common dso_local global i32 0, align 4
@EVLIST_INTERNAL = common dso_local global i32 0, align 4
@EVENT_DEL_EVEN_IF_FINALIZING = common dso_local global i32 0, align 4
@th_base_lock = common dso_local global i32 0, align 4
@EVLIST_FINALIZING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_base*, %struct.event_callback*, i32)* @event_base_cancel_single_callback_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_base_cancel_single_callback_(%struct.event_base* %0, %struct.event_callback* %1, i32 %2) #0 {
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca %struct.event_callback*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.event*, align 8
  %9 = alloca %struct.event*, align 8
  store %struct.event_base* %0, %struct.event_base** %4, align 8
  store %struct.event_callback* %1, %struct.event_callback** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.event_callback*, %struct.event_callback** %5, align 8
  %11 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @EVLIST_INIT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load %struct.event_callback*, %struct.event_callback** %5, align 8
  %18 = call %struct.event* @event_callback_to_event(%struct.event_callback* %17)
  store %struct.event* %18, %struct.event** %8, align 8
  %19 = load %struct.event*, %struct.event** %8, align 8
  %20 = getelementptr inbounds %struct.event, %struct.event* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @EVLIST_INTERNAL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %16
  %26 = load %struct.event*, %struct.event** %8, align 8
  %27 = load i32, i32* @EVENT_DEL_EVEN_IF_FINALIZING, align 4
  %28 = call i32 @event_del_(%struct.event* %26, i32 %27)
  store i32 1, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %16
  br label %40

30:                                               ; preds = %3
  %31 = load %struct.event_base*, %struct.event_base** %4, align 8
  %32 = load i32, i32* @th_base_lock, align 4
  %33 = call i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base* %31, i32 %32)
  %34 = load %struct.event_base*, %struct.event_base** %4, align 8
  %35 = load %struct.event_callback*, %struct.event_callback** %5, align 8
  %36 = call i32 @event_callback_cancel_nolock_(%struct.event_base* %34, %struct.event_callback* %35, i32 1)
  %37 = load %struct.event_base*, %struct.event_base** %4, align 8
  %38 = load i32, i32* @th_base_lock, align 4
  %39 = call i32 @EVBASE_RELEASE_LOCK(%struct.event_base* %37, i32 %38)
  store i32 1, i32* %7, align 4
  br label %40

40:                                               ; preds = %30, %29
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %89

43:                                               ; preds = %40
  %44 = load %struct.event_callback*, %struct.event_callback** %5, align 8
  %45 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @EVLIST_FINALIZING, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %89

50:                                               ; preds = %43
  %51 = load %struct.event_callback*, %struct.event_callback** %5, align 8
  %52 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %87 [
    i32 129, label %54
    i32 128, label %54
    i32 130, label %76
  ]

54:                                               ; preds = %50, %50
  %55 = load %struct.event_callback*, %struct.event_callback** %5, align 8
  %56 = call %struct.event* @event_callback_to_event(%struct.event_callback* %55)
  store %struct.event* %56, %struct.event** %9, align 8
  %57 = load %struct.event*, %struct.event** %9, align 8
  %58 = getelementptr inbounds %struct.event, %struct.event* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (%struct.event.1*, i32)*, i32 (%struct.event.1*, i32)** %60, align 8
  %62 = load %struct.event*, %struct.event** %9, align 8
  %63 = bitcast %struct.event* %62 to %struct.event.1*
  %64 = load %struct.event*, %struct.event** %9, align 8
  %65 = getelementptr inbounds %struct.event, %struct.event* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 %61(%struct.event.1* %63, i32 %66)
  %68 = load %struct.event_callback*, %struct.event_callback** %5, align 8
  %69 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 128
  br i1 %71, label %72, label %75

72:                                               ; preds = %54
  %73 = load %struct.event*, %struct.event** %9, align 8
  %74 = call i32 @mm_free(%struct.event* %73)
  br label %75

75:                                               ; preds = %72, %54
  br label %88

76:                                               ; preds = %50
  %77 = load %struct.event_callback*, %struct.event_callback** %5, align 8
  %78 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32 (%struct.event_callback.0*, i32)*, i32 (%struct.event_callback.0*, i32)** %79, align 8
  %81 = load %struct.event_callback*, %struct.event_callback** %5, align 8
  %82 = bitcast %struct.event_callback* %81 to %struct.event_callback.0*
  %83 = load %struct.event_callback*, %struct.event_callback** %5, align 8
  %84 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 %80(%struct.event_callback.0* %82, i32 %85)
  br label %88

87:                                               ; preds = %50
  br label %88

88:                                               ; preds = %87, %76, %75
  br label %89

89:                                               ; preds = %88, %43, %40
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local %struct.event* @event_callback_to_event(%struct.event_callback*) #1

declare dso_local i32 @event_del_(%struct.event*, i32) #1

declare dso_local i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base*, i32) #1

declare dso_local i32 @event_callback_cancel_nolock_(%struct.event_base*, %struct.event_callback*, i32) #1

declare dso_local i32 @EVBASE_RELEASE_LOCK(%struct.event_base*, i32) #1

declare dso_local i32 @mm_free(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
