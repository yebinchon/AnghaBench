; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_get_persistent_go.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_get_persistent_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ssid = type { i32, i64, %struct.wpa_ssid* }
%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpa_ssid* }

@WPAS_MODE_P2P_GO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_ssid* (%struct.wpa_supplicant*)* @wpas_p2p_get_persistent_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_ssid* @wpas_p2p_get_persistent_go(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_ssid*, align 8
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %6 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  store %struct.wpa_ssid* %9, %struct.wpa_ssid** %4, align 8
  br label %10

10:                                               ; preds = %27, %1
  %11 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %12 = icmp ne %struct.wpa_ssid* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %20 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WPAS_MODE_P2P_GO, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  store %struct.wpa_ssid* %25, %struct.wpa_ssid** %2, align 8
  br label %32

26:                                               ; preds = %18, %13
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %29 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %28, i32 0, i32 2
  %30 = load %struct.wpa_ssid*, %struct.wpa_ssid** %29, align 8
  store %struct.wpa_ssid* %30, %struct.wpa_ssid** %4, align 8
  br label %10

31:                                               ; preds = %10
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %2, align 8
  br label %32

32:                                               ; preds = %31, %24
  %33 = load %struct.wpa_ssid*, %struct.wpa_ssid** %2, align 8
  ret %struct.wpa_ssid* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
