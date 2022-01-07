; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant_sd.c_wpas_p2p_service_del_bonjour.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant_sd.c_wpas_p2p_service_del_bonjour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpabuf = type { i32 }
%struct.p2p_srv_bonjour = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_p2p_service_del_bonjour(%struct.wpa_supplicant* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.p2p_srv_bonjour*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %8 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %9 = call %struct.p2p_srv_bonjour* @wpas_p2p_service_get_bonjour(%struct.wpa_supplicant* %7, %struct.wpabuf* %8)
  store %struct.p2p_srv_bonjour* %9, %struct.p2p_srv_bonjour** %6, align 8
  %10 = load %struct.p2p_srv_bonjour*, %struct.p2p_srv_bonjour** %6, align 8
  %11 = icmp eq %struct.p2p_srv_bonjour* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.p2p_srv_bonjour*, %struct.p2p_srv_bonjour** %6, align 8
  %15 = call i32 @wpas_p2p_srv_bonjour_free(%struct.p2p_srv_bonjour* %14)
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %17 = call i32 @wpas_p2p_sd_service_update(%struct.wpa_supplicant* %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %13, %12
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local %struct.p2p_srv_bonjour* @wpas_p2p_service_get_bonjour(%struct.wpa_supplicant*, %struct.wpabuf*) #1

declare dso_local i32 @wpas_p2p_srv_bonjour_free(%struct.p2p_srv_bonjour*) #1

declare dso_local i32 @wpas_p2p_sd_service_update(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
