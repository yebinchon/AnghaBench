; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_wpa_config_validate_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config_file.c_wpa_config_validate_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ssid = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Line %d: both PSK and passphrase configured.\00", align 1
@WPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@WPA_CIPHER_CCMP_256 = common dso_local global i32 0, align 4
@WPA_CIPHER_GCMP = common dso_local global i32 0, align 4
@WPA_CIPHER_GCMP_256 = common dso_local global i32 0, align 4
@WPA_CIPHER_NONE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"Line %d: removed CCMP from group cipher list since it was not allowed for pairwise cipher\00", align 1
@WPAS_MODE_MESH = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_NONE = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_SAE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"Line %d: key_mgmt for mesh network should be open or SAE\00", align 1
@NO_MGMT_FRAME_PROTECTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_ssid*, i32)* @wpa_config_validate_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_config_validate_network(%struct.wpa_ssid* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_ssid*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wpa_ssid* %0, %struct.wpa_ssid** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %7 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %6, i32 0, i32 9
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %12 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %11, i32 0, i32 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* @MSG_ERROR, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %15, %10
  %22 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %23 = call i32 @wpa_config_update_psk(%struct.wpa_ssid* %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %26 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %31 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %34 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %32
  %40 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %41 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %44 = load i32, i32* @WPA_CIPHER_CCMP_256, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @WPA_CIPHER_GCMP, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @WPA_CIPHER_GCMP_256, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @WPA_CIPHER_NONE, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %42, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %39
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @wpa_printf(i32 %55, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %61 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %54, %39, %32
  %65 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %66 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @WPAS_MODE_MESH, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %64
  %71 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %72 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @WPA_KEY_MGMT_NONE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  %78 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @WPA_KEY_MGMT_SAE, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i32, i32* @MSG_ERROR, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @wpa_printf(i32 %83, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %82, %76, %70, %64
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpa_config_update_psk(%struct.wpa_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
