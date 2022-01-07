; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_get_p2p_role.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers_p2p.c_wpas_get_p2p_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, %struct.wpa_ssid* }
%struct.wpa_ssid = type { i32, i32 }

@WPAS_P2P_ROLE_DEVICE = common dso_local global i32 0, align 4
@WPA_COMPLETED = common dso_local global i64 0, align 8
@WPAS_P2P_ROLE_GO = common dso_local global i32 0, align 4
@WPAS_P2P_ROLE_CLIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*)* @wpas_get_p2p_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_get_p2p_role(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %6 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %5, i32 0, i32 1
  %7 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  store %struct.wpa_ssid* %7, %struct.wpa_ssid** %4, align 8
  %8 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %9 = icmp ne %struct.wpa_ssid* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @WPAS_P2P_ROLE_DEVICE, align 4
  store i32 %11, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WPA_COMPLETED, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @WPAS_P2P_ROLE_DEVICE, align 4
  store i32 %19, i32* %2, align 4
  br label %37

20:                                               ; preds = %12
  %21 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %22 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %35 [
    i32 129, label %24
    i32 128, label %24
    i32 130, label %26
  ]

24:                                               ; preds = %20, %20
  %25 = load i32, i32* @WPAS_P2P_ROLE_GO, align 4
  store i32 %25, i32* %2, align 4
  br label %37

26:                                               ; preds = %20
  %27 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %28 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @WPAS_P2P_ROLE_CLIENT, align 4
  store i32 %32, i32* %2, align 4
  br label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @WPAS_P2P_ROLE_DEVICE, align 4
  store i32 %34, i32* %2, align 4
  br label %37

35:                                               ; preds = %20
  %36 = load i32, i32* @WPAS_P2P_ROLE_DEVICE, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %33, %31, %24, %18, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
