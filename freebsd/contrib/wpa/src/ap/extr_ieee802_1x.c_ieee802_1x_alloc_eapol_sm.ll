; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_alloc_eapol_sm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_alloc_eapol_sm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_state_machine = type { i32 }
%struct.hostapd_data = type { i32 }
%struct.sta_info = type { i32, i32, i32, i32, i32, i32, i64 }

@WLAN_STA_PREAUTH = common dso_local global i32 0, align 4
@EAPOL_SM_PREAUTH = common dso_local global i32 0, align 4
@EAPOL_SM_USES_WPA = common dso_local global i32 0, align 4
@EAPOL_SM_FROM_PMKSA_CACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.eapol_state_machine* @ieee802_1x_alloc_eapol_sm(%struct.hostapd_data* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %7 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @WLAN_STA_PREAUTH, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @EAPOL_SM_PREAUTH, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load i32, i32* @EAPOL_SM_USES_WPA, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @wpa_auth_sta_get_pmksa(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* @EAPOL_SM_FROM_PMKSA_CACHE, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %30, %21
  br label %35

35:                                               ; preds = %34, %16
  %36 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %37 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %44 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %47 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %50 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %51 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %54 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.eapol_state_machine* @eapol_auth_alloc(i32 %38, i32 %41, i32 %42, i32 %45, i32 %48, %struct.sta_info* %49, i32 %52, i32 %55)
  ret %struct.eapol_state_machine* %56
}

declare dso_local i64 @wpa_auth_sta_get_pmksa(i64) #1

declare dso_local %struct.eapol_state_machine* @eapol_auth_alloc(i32, i32, i32, i32, i32, %struct.sta_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
