; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_get_req_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_get_req_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ssid = type { i32 }

@WPS_REQ_ENROLLEE = common dso_local global i32 0, align 4
@WPS_REQ_REGISTRAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_wps_get_req_type(%struct.wpa_ssid* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_ssid* %0, %struct.wpa_ssid** %3, align 8
  %4 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %5 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %4, i32 0, i32 0
  %6 = call i64 @eap_is_wps_pbc_enrollee(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %10 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %9, i32 0, i32 0
  %11 = call i64 @eap_is_wps_pin_enrollee(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @WPS_REQ_ENROLLEE, align 4
  store i32 %14, i32* %2, align 4
  br label %17

15:                                               ; preds = %8
  %16 = load i32, i32* @WPS_REQ_REGISTRAR, align 4
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i64 @eap_is_wps_pbc_enrollee(i32*) #1

declare dso_local i64 @eap_is_wps_pin_enrollee(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
