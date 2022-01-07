; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ibss_rsn.c_ibss_rsn_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ibss_rsn.c_ibss_rsn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibss_rsn = type { %struct.wpa_supplicant* }
%struct.wpa_supplicant = type { i32 }
%struct.wpa_ssid = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibss_rsn* @ibss_rsn_init(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca %struct.ibss_rsn*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca %struct.ibss_rsn*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  %7 = call %struct.ibss_rsn* @os_zalloc(i32 8)
  store %struct.ibss_rsn* %7, %struct.ibss_rsn** %6, align 8
  %8 = load %struct.ibss_rsn*, %struct.ibss_rsn** %6, align 8
  %9 = icmp eq %struct.ibss_rsn* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.ibss_rsn* null, %struct.ibss_rsn** %3, align 8
  br label %27

11:                                               ; preds = %2
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %13 = load %struct.ibss_rsn*, %struct.ibss_rsn** %6, align 8
  %14 = getelementptr inbounds %struct.ibss_rsn, %struct.ibss_rsn* %13, i32 0, i32 0
  store %struct.wpa_supplicant* %12, %struct.wpa_supplicant** %14, align 8
  %15 = load %struct.ibss_rsn*, %struct.ibss_rsn** %6, align 8
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %20 = call i64 @ibss_rsn_auth_init_group(%struct.ibss_rsn* %15, i32 %18, %struct.wpa_ssid* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load %struct.ibss_rsn*, %struct.ibss_rsn** %6, align 8
  %24 = call i32 @ibss_rsn_deinit(%struct.ibss_rsn* %23)
  store %struct.ibss_rsn* null, %struct.ibss_rsn** %3, align 8
  br label %27

25:                                               ; preds = %11
  %26 = load %struct.ibss_rsn*, %struct.ibss_rsn** %6, align 8
  store %struct.ibss_rsn* %26, %struct.ibss_rsn** %3, align 8
  br label %27

27:                                               ; preds = %25, %22, %10
  %28 = load %struct.ibss_rsn*, %struct.ibss_rsn** %3, align 8
  ret %struct.ibss_rsn* %28
}

declare dso_local %struct.ibss_rsn* @os_zalloc(i32) #1

declare dso_local i64 @ibss_rsn_auth_init_group(%struct.ibss_rsn*, i32, %struct.wpa_ssid*) #1

declare dso_local i32 @ibss_rsn_deinit(%struct.ibss_rsn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
