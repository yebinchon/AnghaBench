; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_event.c_event_base_loopexit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_event.c_event_base_loopexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.timeval = type { i32 }

@EV_TIMEOUT = common dso_local global i32 0, align 4
@event_loopexit_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_base_loopexit(%struct.event_base* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca %struct.timeval*, align 8
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %5 = load i32, i32* @EV_TIMEOUT, align 4
  %6 = load i32, i32* @event_loopexit_cb, align 4
  %7 = load %struct.event_base*, %struct.event_base** %3, align 8
  %8 = load %struct.timeval*, %struct.timeval** %4, align 8
  %9 = call i32 @event_once(i32 -1, i32 %5, i32 %6, %struct.event_base* %7, %struct.timeval* %8)
  ret i32 %9
}

declare dso_local i32 @event_once(i32, i32, i32, %struct.event_base*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
