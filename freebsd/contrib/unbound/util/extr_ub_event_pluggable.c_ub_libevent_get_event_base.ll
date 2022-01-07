; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_ub_libevent_get_event_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_ub_libevent_get_event_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.ub_event_base = type { i32* }
%struct.TYPE_2__ = type { %struct.event_base* }

@default_event_base_vmt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.event_base* @ub_libevent_get_event_base(%struct.ub_event_base* %0) #0 {
  %2 = alloca %struct.event_base*, align 8
  %3 = alloca %struct.ub_event_base*, align 8
  store %struct.ub_event_base* %0, %struct.ub_event_base** %3, align 8
  %4 = load %struct.ub_event_base*, %struct.ub_event_base** %3, align 8
  %5 = getelementptr inbounds %struct.ub_event_base, %struct.ub_event_base* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, @default_event_base_vmt
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.ub_event_base*, %struct.ub_event_base** %3, align 8
  %10 = call %struct.TYPE_2__* @AS_MY_EVENT_BASE(%struct.ub_event_base* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.event_base*, %struct.event_base** %11, align 8
  store %struct.event_base* %12, %struct.event_base** %2, align 8
  br label %14

13:                                               ; preds = %1
  store %struct.event_base* null, %struct.event_base** %2, align 8
  br label %14

14:                                               ; preds = %13, %8
  %15 = load %struct.event_base*, %struct.event_base** %2, align 8
  ret %struct.event_base* %15
}

declare dso_local %struct.TYPE_2__* @AS_MY_EVENT_BASE(%struct.ub_event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
