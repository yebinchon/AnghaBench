; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_disable_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_disable_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32, i64, %struct.wpa_ssid*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_ssid* }
%struct.wpa_ssid = type { i32, %struct.wpa_ssid* }

@WPA_AUTHENTICATING = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Stop ongoing sched_scan to remove network from filters\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_supplicant_disable_network(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %4, align 8
  %7 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %8 = icmp eq %struct.wpa_ssid* %7, null
  br i1 %8, label %9, label %69

9:                                                ; preds = %2
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %16 = call i32 @wpa_supplicant_cancel_sched_scan(%struct.wpa_supplicant* %15)
  br label %17

17:                                               ; preds = %14, %9
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.wpa_ssid*, %struct.wpa_ssid** %21, align 8
  store %struct.wpa_ssid* %22, %struct.wpa_ssid** %5, align 8
  br label %23

23:                                               ; preds = %46, %17
  %24 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %25 = icmp ne %struct.wpa_ssid* %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %28 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %46

33:                                               ; preds = %26
  %34 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %35 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %38 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %43 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %44 = call i32 @wpas_notify_network_enabled_changed(%struct.wpa_supplicant* %42, %struct.wpa_ssid* %43)
  br label %45

45:                                               ; preds = %41, %33
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %48 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %47, i32 0, i32 1
  %49 = load %struct.wpa_ssid*, %struct.wpa_ssid** %48, align 8
  store %struct.wpa_ssid* %49, %struct.wpa_ssid** %5, align 8
  br label %23

50:                                               ; preds = %23
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %52 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %51, i32 0, i32 3
  %53 = load %struct.wpa_ssid*, %struct.wpa_ssid** %52, align 8
  %54 = icmp ne %struct.wpa_ssid* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %57 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @WPA_AUTHENTICATING, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %63 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %62, i32 0, i32 1
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %55
  %65 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %66 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %67 = call i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %50
  br label %122

69:                                               ; preds = %2
  %70 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %71 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 2
  br i1 %73, label %74, label %121

74:                                               ; preds = %69
  %75 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %76 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %77 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %76, i32 0, i32 3
  %78 = load %struct.wpa_ssid*, %struct.wpa_ssid** %77, align 8
  %79 = icmp eq %struct.wpa_ssid* %75, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %74
  %81 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %82 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @WPA_AUTHENTICATING, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %88 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %87, i32 0, i32 1
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %80
  %90 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %91 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %92 = call i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %74
  %94 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %95 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %6, align 4
  %97 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %98 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %101 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %99, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %93
  %105 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %106 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %107 = call i32 @wpas_notify_network_enabled_changed(%struct.wpa_supplicant* %105, %struct.wpa_ssid* %106)
  %108 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %109 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %104
  %113 = load i32, i32* @MSG_DEBUG, align 4
  %114 = call i32 @wpa_printf(i32 %113, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %115 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %116 = call i32 @wpa_supplicant_cancel_sched_scan(%struct.wpa_supplicant* %115)
  %117 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %118 = call i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant* %117, i32 0, i32 0)
  br label %119

119:                                              ; preds = %112, %104
  br label %120

120:                                              ; preds = %119, %93
  br label %121

121:                                              ; preds = %120, %69
  br label %122

122:                                              ; preds = %121, %68
  ret void
}

declare dso_local i32 @wpa_supplicant_cancel_sched_scan(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_notify_network_enabled_changed(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
