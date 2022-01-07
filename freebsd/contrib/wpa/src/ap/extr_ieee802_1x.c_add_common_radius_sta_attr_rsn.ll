; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_add_common_radius_sta_attr_rsn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_add_common_radius_sta_attr_rsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i64 }
%struct.hostapd_radius_attr = type { i32 }
%struct.sta_info = type { i32 }
%struct.radius_msg = type { i32 }

@RADIUS_ATTR_WLAN_PAIRWISE_CIPHER = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Could not add WLAN-Pairwise-Cipher\00", align 1
@WPA_PROTO_RSN = common dso_local global i32 0, align 4
@WPA_PROTO_WPA = common dso_local global i32 0, align 4
@RADIUS_ATTR_WLAN_GROUP_CIPHER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not add WLAN-Group-Cipher\00", align 1
@RADIUS_ATTR_WLAN_AKM_SUITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not add WLAN-AKM-Suite\00", align 1
@NO_MGMT_FRAME_PROTECTION = common dso_local global i64 0, align 8
@RADIUS_ATTR_WLAN_GROUP_MGMT_CIPHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, %struct.hostapd_radius_attr*, %struct.sta_info*, %struct.radius_msg*)* @add_common_radius_sta_attr_rsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_common_radius_sta_attr_rsn(%struct.hostapd_data* %0, %struct.hostapd_radius_attr* %1, %struct.sta_info* %2, %struct.radius_msg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca %struct.hostapd_radius_attr*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca %struct.radius_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %6, align 8
  store %struct.hostapd_radius_attr* %1, %struct.hostapd_radius_attr** %7, align 8
  store %struct.sta_info* %2, %struct.sta_info** %8, align 8
  store %struct.radius_msg* %3, %struct.radius_msg** %9, align 8
  %13 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %14 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @wpa_auth_sta_wpa_version(i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @wpa_auth_get_pairwise(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @wpa_cipher_to_suite(i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %40

26:                                               ; preds = %4
  %27 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %7, align 8
  %28 = load i32, i32* @RADIUS_ATTR_WLAN_PAIRWISE_CIPHER, align 4
  %29 = call i32 @hostapd_config_get_radius_attr(%struct.hostapd_radius_attr* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %26
  %32 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %33 = load i32, i32* @RADIUS_ATTR_WLAN_PAIRWISE_CIPHER, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %32, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @MSG_ERROR, align 4
  %39 = call i32 @wpa_printf(i32 %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %104

40:                                               ; preds = %31, %26, %4
  %41 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %42 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, 2
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %40
  %49 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %50 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48, %40
  %56 = load i32, i32* @WPA_PROTO_RSN, align 4
  br label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @WPA_PROTO_WPA, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %62 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wpa_cipher_to_suite(i32 %60, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %7, align 8
  %68 = load i32, i32* @RADIUS_ATTR_WLAN_GROUP_CIPHER, align 4
  %69 = call i32 @hostapd_config_get_radius_attr(%struct.hostapd_radius_attr* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %59
  %72 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %73 = load i32, i32* @RADIUS_ATTR_WLAN_GROUP_CIPHER, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %72, i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @MSG_ERROR, align 4
  %79 = call i32 @wpa_printf(i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %104

80:                                               ; preds = %71, %59
  %81 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %82 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @wpa_auth_sta_key_mgmt(i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @wpa_akm_to_suite(i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %103

89:                                               ; preds = %80
  %90 = load %struct.hostapd_radius_attr*, %struct.hostapd_radius_attr** %7, align 8
  %91 = load i32, i32* @RADIUS_ATTR_WLAN_AKM_SUITE, align 4
  %92 = call i32 @hostapd_config_get_radius_attr(%struct.hostapd_radius_attr* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %89
  %95 = load %struct.radius_msg*, %struct.radius_msg** %9, align 8
  %96 = load i32, i32* @RADIUS_ATTR_WLAN_AKM_SUITE, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @radius_msg_add_attr_int32(%struct.radius_msg* %95, i32 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* @MSG_ERROR, align 4
  %102 = call i32 @wpa_printf(i32 %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %104

103:                                              ; preds = %94, %89, %80
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %100, %77, %37
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @wpa_auth_sta_wpa_version(i32) #1

declare dso_local i32 @wpa_auth_get_pairwise(i32) #1

declare dso_local i32 @wpa_cipher_to_suite(i32, i32) #1

declare dso_local i32 @hostapd_config_get_radius_attr(%struct.hostapd_radius_attr*, i32) #1

declare dso_local i32 @radius_msg_add_attr_int32(%struct.radius_msg*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_auth_sta_key_mgmt(i32) #1

declare dso_local i32 @wpa_akm_to_suite(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
