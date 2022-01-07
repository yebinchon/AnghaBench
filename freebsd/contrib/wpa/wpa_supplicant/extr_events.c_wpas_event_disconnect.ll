; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpas_event_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpas_event_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@WLAN_REASON_IEEE_802_1X_AUTH_FAILED = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_IEEE8021X_NO_WPA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"AUTH_FAILED\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i32*, i64, i32, i32*, i64, i32)* @wpas_event_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_event_disconnect(%struct.wpa_supplicant* %0, i32* %1, i64 %2, i32 %3, i32* %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.wpa_supplicant*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %7
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %17, %7
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @wpa_supplicant_event_disassoc(%struct.wpa_supplicant* %21, i64 %22, i32 %23)
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @WLAN_REASON_IEEE_802_1X_AUTH_FAILED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %47, label %28

28:                                               ; preds = %20
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @wpa_key_mgmt_wpa_ieee8021x(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_NO_WPA, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %34, %28
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %43 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @eapol_sm_failed(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %41, %20
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %49 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %54 = call i32 @wpas_auth_failed(%struct.wpa_supplicant* %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %47, %41, %34
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @wpa_supplicant_event_disassoc_finish(%struct.wpa_supplicant* %56, i64 %57, i32 %58)
  ret void
}

declare dso_local i32 @wpa_supplicant_event_disassoc(%struct.wpa_supplicant*, i64, i32) #1

declare dso_local i64 @wpa_key_mgmt_wpa_ieee8021x(i32) #1

declare dso_local i64 @eapol_sm_failed(i32) #1

declare dso_local i32 @wpas_auth_failed(%struct.wpa_supplicant*, i8*) #1

declare dso_local i32 @wpa_supplicant_event_disassoc_finish(%struct.wpa_supplicant*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
