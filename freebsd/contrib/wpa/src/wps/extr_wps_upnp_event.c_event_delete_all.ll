; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_event.c_event_delete_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_event.c_event_delete_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subscription = type { %struct.wps_event_* }
%struct.wps_event_ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @event_delete_all(%struct.subscription* %0) #0 {
  %2 = alloca %struct.subscription*, align 8
  %3 = alloca %struct.wps_event_*, align 8
  store %struct.subscription* %0, %struct.subscription** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = load %struct.subscription*, %struct.subscription** %2, align 8
  %6 = call %struct.wps_event_* @event_dequeue(%struct.subscription* %5)
  store %struct.wps_event_* %6, %struct.wps_event_** %3, align 8
  %7 = icmp ne %struct.wps_event_* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load %struct.wps_event_*, %struct.wps_event_** %3, align 8
  %10 = call i32 @event_delete(%struct.wps_event_* %9)
  br label %4

11:                                               ; preds = %4
  %12 = load %struct.subscription*, %struct.subscription** %2, align 8
  %13 = getelementptr inbounds %struct.subscription, %struct.subscription* %12, i32 0, i32 0
  %14 = load %struct.wps_event_*, %struct.wps_event_** %13, align 8
  %15 = icmp ne %struct.wps_event_* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.subscription*, %struct.subscription** %2, align 8
  %18 = getelementptr inbounds %struct.subscription, %struct.subscription* %17, i32 0, i32 0
  %19 = load %struct.wps_event_*, %struct.wps_event_** %18, align 8
  %20 = call i32 @event_delete(%struct.wps_event_* %19)
  br label %21

21:                                               ; preds = %16, %11
  ret void
}

declare dso_local %struct.wps_event_* @event_dequeue(%struct.subscription*) #1

declare dso_local i32 @event_delete(%struct.wps_event_*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
