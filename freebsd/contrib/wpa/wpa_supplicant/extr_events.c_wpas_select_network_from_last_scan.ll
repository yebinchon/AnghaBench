; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpas_select_network_from_last_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpas_select_network_from_last_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32, i32, i32, i32, i64, i64, %struct.TYPE_2__*, i64, i64, i64, %struct.wpa_ssid*, i64, i64 }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.wpa_ssid = type { i32 }
%struct.wpa_bss = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Postpone network selection by %d seconds since all networks are disabled\00", align 1
@wpas_network_reenabled = common dso_local global i32 0, align 4
@WPA_AUTHENTICATING = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Connect failed\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"No suitable network found\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Setup a new network\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@WPA_EVENT_NETWORK_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i32, i32)* @wpas_select_network_from_last_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_select_network_from_last_scan(%struct.wpa_supplicant* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_bss*, align 8
  %9 = alloca %struct.wpa_ssid*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %9, align 8
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %15 = call i32 @wpas_reenabled_network_time(%struct.wpa_supplicant* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %19, i32 %20, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @wpas_network_reenabled, align 4
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %25 = call i32 @eloop_cancel_timeout(i32 %23, %struct.wpa_supplicant* %24, i32* null)
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @wpas_network_reenabled, align 4
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %29 = call i32 @eloop_register_timeout(i32 %26, i32 0, i32 %27, %struct.wpa_supplicant* %28, i32* null)
  store i32 0, i32* %4, align 4
  br label %139

30:                                               ; preds = %3
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %32 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %31, i32 0, i32 13
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %139

36:                                               ; preds = %30
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %38 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %37, i32 0, i32 6
  store i64 0, i64* %38, align 8
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %40 = call %struct.wpa_bss* @wpa_supplicant_pick_network(%struct.wpa_supplicant* %39, %struct.wpa_ssid** %9)
  store %struct.wpa_bss* %40, %struct.wpa_bss** %8, align 8
  %41 = load %struct.wpa_bss*, %struct.wpa_bss** %8, align 8
  %42 = icmp ne %struct.wpa_bss* %41, null
  br i1 %42, label %43, label %95

43:                                               ; preds = %36
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %45 = load %struct.wpa_bss*, %struct.wpa_bss** %8, align 8
  %46 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %47 = call i32 @wpa_supplicant_need_to_roam(%struct.wpa_supplicant* %44, %struct.wpa_bss* %45, %struct.wpa_ssid* %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %58 = call i32 @wpa_supplicant_rsn_preauth_scan_results(%struct.wpa_supplicant* %57)
  br label %59

59:                                               ; preds = %56, %53
  store i32 0, i32* %4, align 4
  br label %139

60:                                               ; preds = %43
  %61 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %63 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %62, i32 0, i32 11
  %64 = load %struct.wpa_ssid*, %struct.wpa_ssid** %63, align 8
  %65 = icmp ne %struct.wpa_ssid* %61, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %68 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @WPA_AUTHENTICATING, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %74 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %73, i32 0, i32 1
  store i32 1, i32* %74, align 8
  %75 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %76 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %77 = call i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant* %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %66, %60
  %79 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %80 = load %struct.wpa_bss*, %struct.wpa_bss** %8, align 8
  %81 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %82 = call i64 @wpa_supplicant_connect(%struct.wpa_supplicant* %79, %struct.wpa_bss* %80, %struct.wpa_ssid* %81)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %85, i32 %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %139

88:                                               ; preds = %78
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %93 = call i32 @wpa_supplicant_rsn_preauth_scan_results(%struct.wpa_supplicant* %92)
  br label %94

94:                                               ; preds = %91, %88
  store i32 1, i32* %4, align 4
  br label %139

95:                                               ; preds = %36
  %96 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %97 = load i32, i32* @MSG_DEBUG, align 4
  %98 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %96, i32 %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %99 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %100 = call %struct.wpa_ssid* @wpa_supplicant_pick_new_network(%struct.wpa_supplicant* %99)
  store %struct.wpa_ssid* %100, %struct.wpa_ssid** %9, align 8
  %101 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %102 = icmp ne %struct.wpa_ssid* %101, null
  br i1 %102, label %103, label %116

103:                                              ; preds = %95
  %104 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %105 = load i32, i32* @MSG_DEBUG, align 4
  %106 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %104, i32 %105, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %107 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %108 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %109 = call i32 @wpa_supplicant_associate(%struct.wpa_supplicant* %107, i32* null, %struct.wpa_ssid* %108)
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %114 = call i32 @wpa_supplicant_rsn_preauth_scan_results(%struct.wpa_supplicant* %113)
  br label %115

115:                                              ; preds = %112, %103
  br label %137

116:                                              ; preds = %95
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %121 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %123 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %124 = call i64 @wpa_supplicant_req_sched_scan(%struct.wpa_supplicant* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @wpa_supplicant_req_new_scan(%struct.wpa_supplicant* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %119
  %132 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %133 = load i32, i32* @MSG_INFO, align 4
  %134 = load i32, i32* @WPA_EVENT_NETWORK_NOT_FOUND, align 4
  %135 = call i32 @wpa_msg_ctrl(%struct.wpa_supplicant* %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %131, %116
  br label %137

137:                                              ; preds = %136, %115
  br label %138

138:                                              ; preds = %137
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %94, %84, %59, %35, %18
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @wpas_reenabled_network_time(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, ...) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local %struct.wpa_bss* @wpa_supplicant_pick_network(%struct.wpa_supplicant*, %struct.wpa_ssid**) #1

declare dso_local i32 @wpa_supplicant_need_to_roam(%struct.wpa_supplicant*, %struct.wpa_bss*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpa_supplicant_rsn_preauth_scan_results(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant*, i32) #1

declare dso_local i64 @wpa_supplicant_connect(%struct.wpa_supplicant*, %struct.wpa_bss*, %struct.wpa_ssid*) #1

declare dso_local %struct.wpa_ssid* @wpa_supplicant_pick_new_network(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_associate(%struct.wpa_supplicant*, i32*, %struct.wpa_ssid*) #1

declare dso_local i64 @wpa_supplicant_req_sched_scan(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_req_new_scan(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i32 @wpa_msg_ctrl(%struct.wpa_supplicant*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
