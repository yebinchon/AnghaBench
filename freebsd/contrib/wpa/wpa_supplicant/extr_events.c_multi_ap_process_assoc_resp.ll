; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_multi_ap_process_assoc_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_multi_ap_process_assoc_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee802_11_elems = type { i32*, i32 }

@ParseFailed = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"AP doesn't support Multi-AP protocol\00", align 1
@MULTI_AP_SUB_ELEM_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid Multi-AP sub elem type\00", align 1
@MULTI_AP_BACKHAUL_BSS = common dso_local global i32 0, align 4
@MULTI_AP_FRONTHAUL_BSS = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_WPS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"WPS active, accepting fronthaul-only BSS\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"AP doesn't support backhaul BSS\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to set 4addr mode\00", align 1
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i32*, i64)* @multi_ap_process_assoc_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multi_ap_process_assoc_resp(%struct.wpa_supplicant* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee802_11_elems, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @ieee802_11_parse_elems(i32* %26, i64 %27, %struct.ieee802_11_elems* %7, i32 1)
  %29 = load i64, i64* @ParseFailed, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %22, %15, %3
  br label %108

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 7
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %32
  %41 = load i32, i32* @MSG_INFO, align 4
  %42 = call i32 @wpa_printf(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %104

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  store i32* %46, i32** %9, align 8
  %47 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %7, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 4
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %10, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i32, i32* @MULTI_AP_SUB_ELEM_TYPE, align 4
  %54 = call i32* @get_ie(i32* %51, i64 %52, i32 %53)
  store i32* %54, i32** %8, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %43
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %57, %43
  %63 = load i32, i32* @MSG_INFO, align 4
  %64 = call i32 @wpa_printf(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %104

65:                                               ; preds = %57
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MULTI_AP_BACKHAUL_BSS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %94, label %72

72:                                               ; preds = %65
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MULTI_AP_FRONTHAUL_BSS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %72
  %80 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %81 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @WPA_KEY_MGMT_WPS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load i32, i32* @MSG_INFO, align 4
  %90 = call i32 @wpa_printf(i32 %89, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %108

91:                                               ; preds = %79, %72
  %92 = load i32, i32* @MSG_INFO, align 4
  %93 = call i32 @wpa_printf(i32 %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %104

94:                                               ; preds = %65
  %95 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %96 = call i64 @wpa_drv_set_4addr_mode(%struct.wpa_supplicant* %95, i32 1)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i32, i32* @MSG_ERROR, align 4
  %100 = call i32 @wpa_printf(i32 %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %104

101:                                              ; preds = %94
  %102 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %103 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  br label %108

104:                                              ; preds = %98, %91, %62, %40
  %105 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %106 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %107 = call i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant* %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %101, %88, %31
  ret void
}

declare dso_local i64 @ieee802_11_parse_elems(i32*, i64, %struct.ieee802_11_elems*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @get_ie(i32*, i64, i32) #1

declare dso_local i64 @wpa_drv_set_4addr_mode(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
