; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_get_p2p_go_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_get_p2p_go_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.wpa_ssid*, %struct.wpa_supplicant*, %struct.TYPE_2__* }
%struct.wpa_ssid = type { i64, i64, i32 }
%struct.TYPE_2__ = type { %struct.wpa_supplicant* }

@WPAS_MODE_P2P_GO = common dso_local global i64 0, align 8
@WPAS_MODE_AP = common dso_local global i64 0, align 8
@WPAS_MODE_P2P_GROUP_FORMATION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_supplicant* @wpas_get_p2p_go_iface(%struct.wpa_supplicant* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %10 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %12, align 8
  store %struct.wpa_supplicant* %13, %struct.wpa_supplicant** %5, align 8
  br label %14

14:                                               ; preds = %60, %3
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %16 = icmp ne %struct.wpa_supplicant* %15, null
  br i1 %16, label %17, label %64

17:                                               ; preds = %14
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 0
  %20 = load %struct.wpa_ssid*, %struct.wpa_ssid** %19, align 8
  store %struct.wpa_ssid* %20, %struct.wpa_ssid** %8, align 8
  %21 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %22 = icmp eq %struct.wpa_ssid* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %60

24:                                               ; preds = %17
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %26 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WPAS_MODE_P2P_GO, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %32 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @WPAS_MODE_AP, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %38 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @WPAS_MODE_P2P_GROUP_FORMATION, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %60

43:                                               ; preds = %36, %30, %24
  %44 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %45 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %43
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %52 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @os_memcmp(i32* %50, i32 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49, %43
  br label %60

58:                                               ; preds = %49
  %59 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_supplicant* %59, %struct.wpa_supplicant** %4, align 8
  br label %65

60:                                               ; preds = %57, %42, %23
  %61 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %62 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %61, i32 0, i32 1
  %63 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %62, align 8
  store %struct.wpa_supplicant* %63, %struct.wpa_supplicant** %5, align 8
  br label %14

64:                                               ; preds = %14
  store %struct.wpa_supplicant* null, %struct.wpa_supplicant** %4, align 8
  br label %65

65:                                               ; preds = %64, %58
  %66 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  ret %struct.wpa_supplicant* %66
}

declare dso_local i64 @os_memcmp(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
