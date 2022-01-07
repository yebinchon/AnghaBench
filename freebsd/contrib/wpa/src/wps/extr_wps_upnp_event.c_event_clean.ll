; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_event.c_event_clean.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_event.c_event_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_event_ = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wps_event_* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_event_*)* @event_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_clean(%struct.wps_event_* %0) #0 {
  %2 = alloca %struct.wps_event_*, align 8
  store %struct.wps_event_* %0, %struct.wps_event_** %2, align 8
  %3 = load %struct.wps_event_*, %struct.wps_event_** %2, align 8
  %4 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.wps_event_*, %struct.wps_event_** %6, align 8
  %8 = load %struct.wps_event_*, %struct.wps_event_** %2, align 8
  %9 = icmp eq %struct.wps_event_* %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.wps_event_*, %struct.wps_event_** %2, align 8
  %12 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.wps_event_* null, %struct.wps_event_** %14, align 8
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.wps_event_*, %struct.wps_event_** %2, align 8
  %17 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @http_client_free(i32* %18)
  %20 = load %struct.wps_event_*, %struct.wps_event_** %2, align 8
  %21 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  ret void
}

declare dso_local i32 @http_client_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
