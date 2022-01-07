; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_reenable_networks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_reenable_networks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, %struct.wpa_ssid* }
%struct.wpa_ssid = type { i64, i64, %struct.wpa_ssid* }

@wpas_wps_reenable_networks_cb = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"WPS: Failed to update configuration\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*)* @wpas_wps_reenable_networks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_wps_reenable_networks(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca %struct.wpa_ssid*, align 8
  %4 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @wpas_wps_reenable_networks_cb, align 4
  %6 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %7 = call i32 @eloop_cancel_timeout(i32 %5, %struct.wpa_supplicant* %6, i32* null)
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.wpa_ssid*, %struct.wpa_ssid** %11, align 8
  store %struct.wpa_ssid* %12, %struct.wpa_ssid** %3, align 8
  br label %13

13:                                               ; preds = %37, %1
  %14 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %15 = icmp ne %struct.wpa_ssid* %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %18 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %23 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %28 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %30 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %32 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %33 = call i32 @wpas_notify_network_enabled_changed(%struct.wpa_supplicant* %31, %struct.wpa_ssid* %32)
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %26, %21, %16
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %39 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %38, i32 0, i32 2
  %40 = load %struct.wpa_ssid*, %struct.wpa_ssid** %39, align 8
  store %struct.wpa_ssid* %40, %struct.wpa_ssid** %3, align 8
  br label %13

41:                                               ; preds = %13
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %46 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %53 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %56 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = call i64 @wpa_config_write(i32 %54, %struct.TYPE_2__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = call i32 @wpa_printf(i32 %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %51, %44
  br label %64

64:                                               ; preds = %63, %41
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpas_notify_network_enabled_changed(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i64 @wpa_config_write(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
