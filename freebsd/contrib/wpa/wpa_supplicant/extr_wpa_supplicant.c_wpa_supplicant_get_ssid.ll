; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_get_ssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_get_ssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ssid = type { i64, i32, %struct.wpa_ssid*, i32*, i64, i32* }
%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.wpa_ssid* }

@SSID_MAX_LEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Could not read SSID from driver\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not read BSSID from driver\00", align 1
@WPA_DRIVER_FLAGS_WIRED = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_WPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpa_ssid* @wpa_supplicant_get_ssid(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_ssid*, align 8
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %12 = load i32, i32* @SSID_MAX_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %20 = call i32 @wpa_drv_get_ssid(%struct.wpa_supplicant* %19, i32* %15)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %25 = load i32, i32* @MSG_WARNING, align 4
  %26 = call i32 @wpa_msg(%struct.wpa_supplicant* %24, i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %2, align 8
  store i32 1, i32* %11, align 4
  br label %132

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %8, align 8
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %31 = call i64 @wpa_drv_get_bssid(%struct.wpa_supplicant* %30, i32* %18)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %35 = load i32, i32* @MSG_WARNING, align 4
  %36 = call i32 @wpa_msg(%struct.wpa_supplicant* %34, i32 %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %2, align 8
  store i32 1, i32* %11, align 4
  br label %132

37:                                               ; preds = %27
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %46 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @WPA_DRIVER_FLAGS_WIRED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %44, %37
  %52 = phi i1 [ false, %37 ], [ %50, %44 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %10, align 4
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %55 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load %struct.wpa_ssid*, %struct.wpa_ssid** %57, align 8
  store %struct.wpa_ssid* %58, %struct.wpa_ssid** %4, align 8
  br label %59

59:                                               ; preds = %127, %51
  %60 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %61 = icmp ne %struct.wpa_ssid* %60, null
  br i1 %61, label %62, label %131

62:                                               ; preds = %59
  %63 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %64 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %65 = call i32 @wpas_network_disabled(%struct.wpa_supplicant* %63, %struct.wpa_ssid* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %103, label %67

67:                                               ; preds = %62
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %70 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %75 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %80 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %79, i32 0, i32 5
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i64 @os_memcmp(i32* %15, i32* %81, i32 %83)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %78, %67
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %86, %78, %73
  %90 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %91 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %96 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* @ETH_ALEN, align 4
  %99 = call i64 @os_memcmp(i32* %18, i32* %97, i32 %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94, %89
  %102 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  store %struct.wpa_ssid* %102, %struct.wpa_ssid** %2, align 8
  store i32 1, i32* %11, align 4
  br label %132

103:                                              ; preds = %94, %86, %62
  %104 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %105 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %106 = call i32 @wpas_network_disabled(%struct.wpa_supplicant* %104, %struct.wpa_ssid* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %127, label %108

108:                                              ; preds = %103
  %109 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %110 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %108
  %114 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %115 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %120 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* @ETH_ALEN, align 4
  %123 = call i64 @os_memcmp(i32* %18, i32* %121, i32 %122)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  store %struct.wpa_ssid* %126, %struct.wpa_ssid** %2, align 8
  store i32 1, i32* %11, align 4
  br label %132

127:                                              ; preds = %118, %113, %108, %103
  %128 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %129 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %128, i32 0, i32 2
  %130 = load %struct.wpa_ssid*, %struct.wpa_ssid** %129, align 8
  store %struct.wpa_ssid* %130, %struct.wpa_ssid** %4, align 8
  br label %59

131:                                              ; preds = %59
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %2, align 8
  store i32 1, i32* %11, align 4
  br label %132

132:                                              ; preds = %131, %125, %101, %33, %23
  %133 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load %struct.wpa_ssid*, %struct.wpa_ssid** %2, align 8
  ret %struct.wpa_ssid* %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_drv_get_ssid(%struct.wpa_supplicant*, i32*) #2

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*) #2

declare dso_local i64 @wpa_drv_get_bssid(%struct.wpa_supplicant*, i32*) #2

declare dso_local i32 @wpas_network_disabled(%struct.wpa_supplicant*, %struct.wpa_ssid*) #2

declare dso_local i64 @os_memcmp(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
