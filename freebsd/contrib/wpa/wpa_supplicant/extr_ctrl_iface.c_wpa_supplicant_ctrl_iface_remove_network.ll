; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_remove_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_remove_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32, %struct.TYPE_4__*, %struct.wpa_ssid*, i32, i32, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_4__ = type { %struct.wpa_ssid* }
%struct.wpa_ssid = type { i32, %struct.wpa_ssid* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"CTRL_IFACE: REMOVE_NETWORK all\00", align 1
@WPA_AUTHENTICATING = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"CTRL_IFACE: REMOVE_NETWORK id=%d\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"CTRL_IFACE: Could not find network id=%d\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"CTRL_IFACE: Not able to remove the network id=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*)* @wpa_supplicant_ctrl_iface_remove_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_ctrl_iface_remove_network(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_ssid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @os_strcmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %88

13:                                               ; preds = %2
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 8
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %22 = call i32 @wpa_supplicant_cancel_sched_scan(%struct.wpa_supplicant* %21)
  br label %23

23:                                               ; preds = %20, %13
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @eapol_sm_invalidate_cached_session(i32 %26)
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %23
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @wpa_sm_set_config(i32 %35, i32* null)
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %38 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @eapol_sm_notify_config(i32 %39, i32* null, i32* null)
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %42 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @WPA_AUTHENTICATING, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %48 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %32
  %50 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %51 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %52 = call i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %23
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %55 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %54, i32 0, i32 2
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.wpa_ssid*, %struct.wpa_ssid** %57, align 8
  store %struct.wpa_ssid* %58, %struct.wpa_ssid** %7, align 8
  br label %59

59:                                               ; preds = %78, %53
  %60 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %61 = icmp ne %struct.wpa_ssid* %60, null
  br i1 %61, label %62, label %87

62:                                               ; preds = %59
  %63 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  store %struct.wpa_ssid* %63, %struct.wpa_ssid** %9, align 8
  %64 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %65 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %6, align 4
  %67 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %68 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %67, i32 0, i32 1
  %69 = load %struct.wpa_ssid*, %struct.wpa_ssid** %68, align 8
  store %struct.wpa_ssid* %69, %struct.wpa_ssid** %7, align 8
  %70 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %71 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %70, i32 0, i32 3
  %72 = load %struct.wpa_ssid*, %struct.wpa_ssid** %71, align 8
  %73 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %74 = icmp eq %struct.wpa_ssid* %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %62
  %76 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %77 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %76, i32 0, i32 3
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %77, align 8
  br label %78

78:                                               ; preds = %75, %62
  %79 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %80 = load %struct.wpa_ssid*, %struct.wpa_ssid** %9, align 8
  %81 = call i32 @wpas_notify_network_removed(%struct.wpa_supplicant* %79, %struct.wpa_ssid* %80)
  %82 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %83 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @wpa_config_remove_network(%struct.TYPE_4__* %84, i32 %85)
  br label %59

87:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %111

88:                                               ; preds = %2
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @atoi(i8* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @wpa_supplicant_remove_network(%struct.wpa_supplicant* %94, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %103

99:                                               ; preds = %88
  %100 = load i32, i32* @MSG_DEBUG, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (i32, i8*, ...) @wpa_printf(i32 %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  store i32 -1, i32* %3, align 4
  br label %111

103:                                              ; preds = %88
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, -2
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* @MSG_DEBUG, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 (i32, i8*, ...) @wpa_printf(i32 %107, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  store i32 -1, i32* %3, align 4
  br label %111

110:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %106, %99, %87
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_supplicant_cancel_sched_scan(%struct.wpa_supplicant*) #1

declare dso_local i32 @eapol_sm_invalidate_cached_session(i32) #1

declare dso_local i32 @wpa_sm_set_config(i32, i32*) #1

declare dso_local i32 @eapol_sm_notify_config(i32, i32*, i32*) #1

declare dso_local i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpas_notify_network_removed(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpa_config_remove_network(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @wpa_supplicant_remove_network(%struct.wpa_supplicant*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
