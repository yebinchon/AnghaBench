; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ap.c_upnp_er_remove_notification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ap.c_upnp_er_remove_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i32 }
%struct.subscription = type { i64 }

@upnp_er_set_selected_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @upnp_er_remove_notification(%struct.wps_registrar* %0, %struct.subscription* %1) #0 {
  %3 = alloca %struct.wps_registrar*, align 8
  %4 = alloca %struct.subscription*, align 8
  store %struct.wps_registrar* %0, %struct.wps_registrar** %3, align 8
  store %struct.subscription* %1, %struct.subscription** %4, align 8
  %5 = load %struct.subscription*, %struct.subscription** %4, align 8
  %6 = getelementptr inbounds %struct.subscription, %struct.subscription* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @upnp_er_set_selected_timeout, align 4
  %8 = load %struct.subscription*, %struct.subscription** %4, align 8
  %9 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %10 = call i32 @eloop_cancel_timeout(i32 %7, %struct.subscription* %8, %struct.wps_registrar* %9)
  %11 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %12 = icmp ne %struct.wps_registrar* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.wps_registrar*, %struct.wps_registrar** %3, align 8
  %15 = call i32 @wps_registrar_selected_registrar_changed(%struct.wps_registrar* %14, i32 0)
  br label %16

16:                                               ; preds = %13, %2
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.subscription*, %struct.wps_registrar*) #1

declare dso_local i32 @wps_registrar_selected_registrar_changed(%struct.wps_registrar*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
