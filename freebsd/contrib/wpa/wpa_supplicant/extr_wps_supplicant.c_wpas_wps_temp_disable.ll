; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_temp_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_temp_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.wpa_ssid* }
%struct.wpa_ssid = type { i32, i32, %struct.wpa_ssid* }

@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.wpa_ssid*)* @wpas_wps_temp_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_wps_temp_disable(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %4, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %15 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %16 = call i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant* %14, i32 %15)
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.wpa_ssid*, %struct.wpa_ssid** %21, align 8
  store %struct.wpa_ssid* %22, %struct.wpa_ssid** %5, align 8
  br label %23

23:                                               ; preds = %59, %17
  %24 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %25 = icmp ne %struct.wpa_ssid* %24, null
  br i1 %25, label %26, label %63

26:                                               ; preds = %23
  %27 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %28 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  %30 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %31 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %34, label %59

34:                                               ; preds = %26
  %35 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %36 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %37 = icmp ne %struct.wpa_ssid* %35, %36
  %38 = zext i1 %37 to i32
  %39 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %40 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %43 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %34
  %47 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %48 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %53 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %56 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %57 = call i32 @wpas_notify_network_enabled_changed(%struct.wpa_supplicant* %55, %struct.wpa_ssid* %56)
  br label %58

58:                                               ; preds = %54, %34
  br label %59

59:                                               ; preds = %58, %26
  %60 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %61 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %60, i32 0, i32 2
  %62 = load %struct.wpa_ssid*, %struct.wpa_ssid** %61, align 8
  store %struct.wpa_ssid* %62, %struct.wpa_ssid** %5, align 8
  br label %23

63:                                               ; preds = %23
  ret void
}

declare dso_local i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpas_notify_network_enabled_changed(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
