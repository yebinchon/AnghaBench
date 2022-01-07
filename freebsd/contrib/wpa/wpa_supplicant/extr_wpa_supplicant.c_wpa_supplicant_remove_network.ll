; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_remove_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_remove_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32, i64, i32, i32, i32, %struct.wpa_ssid*, %struct.TYPE_2__, %struct.wpa_ssid* }
%struct.TYPE_2__ = type { i64 }
%struct.wpa_ssid = type { i32 }

@WPA_AUTHENTICATING = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Stop ongoing sched_scan to remove network from filters\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_remove_network(%struct.wpa_supplicant* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_ssid*, align 8
  %7 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.wpa_ssid* @wpa_config_get_network(i32 %10, i32 %11)
  store %struct.wpa_ssid* %12, %struct.wpa_ssid** %6, align 8
  %13 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %14 = icmp ne %struct.wpa_ssid* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %98

16:                                               ; preds = %2
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %18 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %19 = call i32 @wpas_notify_network_removed(%struct.wpa_supplicant* %17, %struct.wpa_ssid* %18)
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 8
  %22 = load %struct.wpa_ssid*, %struct.wpa_ssid** %21, align 8
  %23 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %24 = icmp eq %struct.wpa_ssid* %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 8
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %27, align 8
  br label %28

28:                                               ; preds = %25, %16
  %29 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 6
  %32 = load %struct.wpa_ssid*, %struct.wpa_ssid** %31, align 8
  %33 = icmp eq %struct.wpa_ssid* %29, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 6
  %37 = load %struct.wpa_ssid*, %struct.wpa_ssid** %36, align 8
  %38 = icmp ne %struct.wpa_ssid* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34, %28
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %41 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @eapol_sm_invalidate_cached_session(i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %47 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %46, i32 0, i32 6
  %48 = load %struct.wpa_ssid*, %struct.wpa_ssid** %47, align 8
  %49 = icmp eq %struct.wpa_ssid* %45, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %44
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %52 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @wpa_sm_set_config(i32 %53, i32* null)
  %55 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %56 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @eapol_sm_notify_config(i32 %57, i32* null, i32* null)
  %59 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %60 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @WPA_AUTHENTICATING, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %66 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %65, i32 0, i32 1
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %50
  %68 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %69 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %70 = call i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %44
  %72 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %73 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %7, align 4
  %75 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %76 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i64 @wpa_config_remove_network(i32 %77, i32 %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  store i32 -2, i32* %3, align 4
  br label %98

82:                                               ; preds = %71
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %82
  %86 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %87 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = call i32 @wpa_printf(i32 %91, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %94 = call i32 @wpa_supplicant_cancel_sched_scan(%struct.wpa_supplicant* %93)
  %95 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %96 = call i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant* %95, i32 0, i32 0)
  br label %97

97:                                               ; preds = %90, %85, %82
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %81, %15
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.wpa_ssid* @wpa_config_get_network(i32, i32) #1

declare dso_local i32 @wpas_notify_network_removed(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @eapol_sm_invalidate_cached_session(i32) #1

declare dso_local i32 @wpa_sm_set_config(i32, i32*) #1

declare dso_local i32 @eapol_sm_notify_config(i32, i32*, i32*) #1

declare dso_local i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant*, i32) #1

declare dso_local i64 @wpa_config_remove_network(i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_supplicant_cancel_sched_scan(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
