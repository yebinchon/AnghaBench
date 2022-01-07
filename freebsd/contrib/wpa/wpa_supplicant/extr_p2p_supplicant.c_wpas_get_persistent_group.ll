; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_get_persistent_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_get_persistent_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32 }
%struct.wpa_ssid = type { i64, i64, i32, i32 }

@ETH_ALEN = common dso_local global i64 0, align 8
@WPAS_MODE_P2P_GO = common dso_local global i64 0, align 8
@WPA_IF_P2P_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i64, i32*, i32*, i64*, i32*)* @wpas_get_persistent_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_get_persistent_group(i8* %0, i32* %1, i32* %2, i64 %3, i32* %4, i32* %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.wpa_supplicant*, align 8
  %19 = alloca %struct.wpa_ssid*, align 8
  store i8* %0, i8** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %21, %struct.wpa_supplicant** %18, align 8
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %18, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load i64, i64* %13, align 8
  %26 = call %struct.wpa_ssid* @wpas_p2p_get_persistent(%struct.wpa_supplicant* %22, i32* %23, i32* %24, i64 %25)
  store %struct.wpa_ssid* %26, %struct.wpa_ssid** %19, align 8
  %27 = load %struct.wpa_ssid*, %struct.wpa_ssid** %19, align 8
  %28 = icmp ne %struct.wpa_ssid* %27, null
  br i1 %28, label %29, label %83

29:                                               ; preds = %8
  %30 = load i32*, i32** %15, align 8
  %31 = load %struct.wpa_ssid*, %struct.wpa_ssid** %19, align 8
  %32 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.wpa_ssid*, %struct.wpa_ssid** %19, align 8
  %35 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @os_memcpy(i32* %30, i32 %33, i64 %36)
  %38 = load %struct.wpa_ssid*, %struct.wpa_ssid** %19, align 8
  %39 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %16, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = load %struct.wpa_ssid*, %struct.wpa_ssid** %19, align 8
  %44 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* @ETH_ALEN, align 8
  %47 = call i32 @os_memcpy(i32* %42, i32 %45, i64 %46)
  %48 = load %struct.wpa_ssid*, %struct.wpa_ssid** %19, align 8
  %49 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @WPAS_MODE_P2P_GO, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %29
  %54 = load i32*, i32** %17, align 8
  %55 = load i64, i64* @ETH_ALEN, align 8
  %56 = call i32 @os_memset(i32* %54, i32 0, i64 %55)
  br label %82

57:                                               ; preds = %29
  %58 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %18, align 8
  %59 = call i64 @wpas_p2p_create_iface(%struct.wpa_supplicant* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %18, align 8
  %63 = load i32, i32* @WPA_IF_P2P_GO, align 4
  %64 = call i64 @wpas_p2p_add_group_interface(%struct.wpa_supplicant* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  br label %84

67:                                               ; preds = %61
  %68 = load i32*, i32** %17, align 8
  %69 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %18, align 8
  %70 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* @ETH_ALEN, align 8
  %73 = call i32 @os_memcpy(i32* %68, i32 %71, i64 %72)
  br label %81

74:                                               ; preds = %57
  %75 = load i32*, i32** %17, align 8
  %76 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %18, align 8
  %77 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* @ETH_ALEN, align 8
  %80 = call i32 @os_memcpy(i32* %75, i32 %78, i64 %79)
  br label %81

81:                                               ; preds = %74, %67
  br label %82

82:                                               ; preds = %81, %53
  store i32 1, i32* %9, align 4
  br label %84

83:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %83, %82, %66
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

declare dso_local %struct.wpa_ssid* @wpas_p2p_get_persistent(%struct.wpa_supplicant*, i32*, i32*, i64) #1

declare dso_local i32 @os_memcpy(i32*, i32, i64) #1

declare dso_local i32 @os_memset(i32*, i32, i64) #1

declare dso_local i64 @wpas_p2p_create_iface(%struct.wpa_supplicant*) #1

declare dso_local i64 @wpas_p2p_add_group_interface(%struct.wpa_supplicant*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
