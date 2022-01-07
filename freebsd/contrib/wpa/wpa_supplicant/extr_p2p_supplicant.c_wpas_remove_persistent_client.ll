; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_remove_persistent_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_remove_persistent_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.wpa_ssid*, %struct.TYPE_2__* }
%struct.wpa_ssid = type { i64, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.wpa_supplicant* }

@WPAS_MODE_P2P_GO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i32*)* @wpas_remove_persistent_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_remove_persistent_client(%struct.wpa_supplicant* %0, i32* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %7 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %9, align 8
  store %struct.wpa_supplicant* %10, %struct.wpa_supplicant** %3, align 8
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %12 = icmp eq %struct.wpa_supplicant* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %48

14:                                               ; preds = %2
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 1
  %17 = load %struct.wpa_ssid*, %struct.wpa_ssid** %16, align 8
  store %struct.wpa_ssid* %17, %struct.wpa_ssid** %5, align 8
  %18 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %19 = icmp eq %struct.wpa_ssid* %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %14
  %21 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %22 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WPAS_MODE_P2P_GO, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %28 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %20, %14
  br label %48

32:                                               ; preds = %26
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %38 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %41 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.wpa_ssid* @wpas_p2p_get_persistent(i32 %35, i32* %36, i32 %39, i32 %42)
  store %struct.wpa_ssid* %43, %struct.wpa_ssid** %5, align 8
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %45 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @wpas_remove_persistent_peer(%struct.wpa_supplicant* %44, %struct.wpa_ssid* %45, i32* %46, i32 1)
  br label %48

48:                                               ; preds = %32, %31, %13
  ret void
}

declare dso_local %struct.wpa_ssid* @wpas_p2p_get_persistent(i32, i32*, i32, i32) #1

declare dso_local i32 @wpas_remove_persistent_peer(%struct.wpa_supplicant*, %struct.wpa_ssid*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
