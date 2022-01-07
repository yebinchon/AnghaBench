; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_listener.c_evconnlistener_get_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_listener.c_evconnlistener_get_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.evconnlistener = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.event_base* @evconnlistener_get_base(%struct.evconnlistener* %0) #0 {
  %2 = alloca %struct.evconnlistener*, align 8
  %3 = alloca %struct.event_base*, align 8
  store %struct.evconnlistener* %0, %struct.evconnlistener** %2, align 8
  %4 = load %struct.evconnlistener*, %struct.evconnlistener** %2, align 8
  %5 = call i32 @LOCK(%struct.evconnlistener* %4)
  %6 = load %struct.evconnlistener*, %struct.evconnlistener** %2, align 8
  %7 = getelementptr inbounds %struct.evconnlistener, %struct.evconnlistener* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to %struct.event_base* (%struct.evconnlistener*)**
  %11 = load %struct.event_base* (%struct.evconnlistener*)*, %struct.event_base* (%struct.evconnlistener*)** %10, align 8
  %12 = load %struct.evconnlistener*, %struct.evconnlistener** %2, align 8
  %13 = call %struct.event_base* %11(%struct.evconnlistener* %12)
  store %struct.event_base* %13, %struct.event_base** %3, align 8
  %14 = load %struct.evconnlistener*, %struct.evconnlistener** %2, align 8
  %15 = call i32 @UNLOCK(%struct.evconnlistener* %14)
  %16 = load %struct.event_base*, %struct.event_base** %3, align 8
  ret %struct.event_base* %16
}

declare dso_local i32 @LOCK(%struct.evconnlistener*) #1

declare dso_local i32 @UNLOCK(%struct.evconnlistener*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
