; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_set_wpa_none_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_set_wpa_none_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_ssid = type { i64, i32, i32 }

@WPAS_MODE_IBSS = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"WPA: Invalid mode %d (not IBSS/ad-hoc) for WPA-None\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"WPA: No PSK configured for WPA-None\00", align 1
@WPA_ALG_CCMP = common dso_local global i32 0, align 4
@WPA_ALG_GCMP = common dso_local global i32 0, align 4
@WPA_ALG_TKIP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"WPA: Invalid group cipher %d for WPA-None\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_set_wpa_none_key(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca [32 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [6 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  %11 = bitcast [6 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 24, i1 false)
  %12 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %13 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WPAS_MODE_IBSS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %19 = load i32, i32* @MSG_INFO, align 4
  %20 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %21 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %18, i32 %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %22)
  store i32 -1, i32* %3, align 4
  br label %83

24:                                               ; preds = %2
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %26 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %31 = load i32, i32* @MSG_INFO, align 4
  %32 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %30, i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %83

33:                                               ; preds = %24
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %66 [
    i32 130, label %37
    i32 129, label %44
    i32 128, label %51
  ]

37:                                               ; preds = %33
  %38 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %39 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %40 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @os_memcpy(i32* %38, i32 %41, i32 16)
  store i64 16, i64* %7, align 8
  %43 = load i32, i32* @WPA_ALG_CCMP, align 4
  store i32 %43, i32* %8, align 4
  br label %73

44:                                               ; preds = %33
  %45 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %46 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %47 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @os_memcpy(i32* %45, i32 %48, i32 16)
  store i64 16, i64* %7, align 8
  %50 = load i32, i32* @WPA_ALG_GCMP, align 4
  store i32 %50, i32* %8, align 4
  br label %73

51:                                               ; preds = %33
  %52 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %53 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %54 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @os_memcpy(i32* %52, i32 %55, i32 24)
  %57 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %58 = getelementptr inbounds i32, i32* %57, i64 16
  %59 = getelementptr inbounds i32, i32* %58, i64 8
  %60 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %61 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 16
  %64 = call i32 @os_memcpy(i32* %59, i32 %63, i32 8)
  store i64 32, i64* %7, align 8
  %65 = load i32, i32* @WPA_ALG_TKIP, align 4
  store i32 %65, i32* %8, align 4
  br label %73

66:                                               ; preds = %33
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %68 = load i32, i32* @MSG_INFO, align 4
  %69 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %70 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_msg(%struct.wpa_supplicant* %67, i32 %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  store i32 -1, i32* %3, align 4
  br label %83

73:                                               ; preds = %51, %44, %37
  %74 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %75 = load i32, i32* %8, align 4
  %76 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %77 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @wpa_drv_set_key(%struct.wpa_supplicant* %74, i32 %75, i32* null, i32 0, i32 1, i32* %76, i32 6, i32* %77, i64 %78)
  store i32 %79, i32* %10, align 4
  %80 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %81 = call i32 @os_memset(i32* %80, i32 0, i32 128)
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %73, %66, %29, %17
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*, ...) #2

declare dso_local i32 @os_memcpy(i32*, i32, i32) #2

declare dso_local i32 @wpa_drv_set_key(%struct.wpa_supplicant*, i32, i32*, i32, i32, i32*, i32, i32*, i64) #2

declare dso_local i32 @os_memset(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
