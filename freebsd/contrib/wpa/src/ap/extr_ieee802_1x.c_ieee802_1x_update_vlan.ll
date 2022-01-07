; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_update_vlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_update_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius_msg = type { i32 }
%struct.hostapd_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.sta_info = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.vlan_description = type { i32, i64*, i32 }

@MAX_NUM_TAGGED_VLAN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@HOSTAPD_MODULE_RADIUS = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Invalid VLAN %d%s received from RADIUS server\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DYNAMIC_VLAN_REQUIRED = common dso_local global i64 0, align 8
@HOSTAPD_MODULE_IEEE8021X = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [72 x i8] c"authentication server did not include required VLAN ID in Access-Accept\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radius_msg*, %struct.hostapd_data*, %struct.sta_info*)* @ieee802_1x_update_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_1x_update_vlan(%struct.radius_msg* %0, %struct.hostapd_data* %1, %struct.sta_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radius_msg*, align 8
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca %struct.vlan_description, align 8
  store %struct.radius_msg* %0, %struct.radius_msg** %5, align 8
  store %struct.hostapd_data* %1, %struct.hostapd_data** %6, align 8
  store %struct.sta_info* %2, %struct.sta_info** %7, align 8
  %9 = call i32 @os_memset(%struct.vlan_description* %8, i32 0, i32 24)
  %10 = load %struct.radius_msg*, %struct.radius_msg** %5, align 8
  %11 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %8, i32 0, i32 2
  %12 = load i32, i32* @MAX_NUM_TAGGED_VLAN, align 4
  %13 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %8, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = call i32 @radius_msg_get_vlanid(%struct.radius_msg* %10, i32* %11, i32 %12, i64* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %8, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %3
  %25 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %26 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @hostapd_vlan_valid(i32 %29, %struct.vlan_description* %8)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %58, label %32

32:                                               ; preds = %24
  %33 = load i8*, i8** @TRUE, align 8
  %34 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %35 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i8* %33, i8** %37, align 8
  %38 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %39 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @HOSTAPD_MODULE_RADIUS, align 4
  %43 = load i32, i32* @HOSTAPD_LEVEL_INFO, align 4
  %44 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %8, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %8, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %53 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %38, i32 %41, i32 %42, i32 %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %45, i8* %52)
  %54 = call i32 @os_memset(%struct.vlan_description* %8, i32 0, i32 24)
  %55 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %56 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %57 = call i32 @ap_sta_set_vlan(%struct.hostapd_data* %55, %struct.sta_info* %56, %struct.vlan_description* %8)
  store i32 -1, i32* %4, align 4
  br label %88

58:                                               ; preds = %24, %3
  %59 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %60 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DYNAMIC_VLAN_REQUIRED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %8, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** @TRUE, align 8
  %73 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %74 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i8* %72, i8** %76, align 8
  %77 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %78 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %79 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @HOSTAPD_MODULE_IEEE8021X, align 4
  %82 = load i32, i32* @HOSTAPD_LEVEL_INFO, align 4
  %83 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %77, i32 %80, i32 %81, i32 %82, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %88

84:                                               ; preds = %67, %58
  %85 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %86 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %87 = call i32 @ap_sta_set_vlan(%struct.hostapd_data* %85, %struct.sta_info* %86, %struct.vlan_description* %8)
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %84, %71, %32
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @os_memset(%struct.vlan_description*, i32, i32) #1

declare dso_local i32 @radius_msg_get_vlanid(%struct.radius_msg*, i32*, i32, i64*) #1

declare dso_local i32 @hostapd_vlan_valid(i32, %struct.vlan_description*) #1

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ap_sta_set_vlan(%struct.hostapd_data*, %struct.sta_info*, %struct.vlan_description*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
