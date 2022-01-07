; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_match_privacy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_match_privacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_bss = type { i32 }
%struct.wpa_ssid = type { i32, i32, i32, i64 }

@WPA_KEY_MGMT_OSEN = common dso_local global i32 0, align 4
@IEEE80211_CAP_PRIVACY = common dso_local global i32 0, align 4
@EAPOL_FLAG_REQUIRE_KEY_BROADCAST = common dso_local global i32 0, align 4
@EAPOL_FLAG_REQUIRE_KEY_UNICAST = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_NO_WPA = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_OWE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_WPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_bss*, %struct.wpa_ssid*)* @wpa_supplicant_match_privacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_match_privacy(%struct.wpa_bss* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_bss*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca i32, align 4
  store %struct.wpa_bss* %0, %struct.wpa_bss** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %8 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %46

12:                                               ; preds = %2
  %13 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %14 = call i64 @has_wep_key(%struct.wpa_ssid* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 1, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %12
  %18 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %19 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @wpa_key_mgmt_wpa(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %26 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @WPA_KEY_MGMT_OSEN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %24
  %33 = load %struct.wpa_bss*, %struct.wpa_bss** %4, align 8
  %34 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IEEE80211_CAP_PRIVACY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %46

41:                                               ; preds = %32
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %39, %11
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @has_wep_key(%struct.wpa_ssid*) #1

declare dso_local i64 @wpa_key_mgmt_wpa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
