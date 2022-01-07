; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_init.c_vlan_if_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_init.c_vlan_if_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.hostapd_vlan = type { i32, i32 }

@NUM_WEP_KEYS = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"VLAN: Refusing to set up VLAN iface %s with WEP\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"WPA initialization for VLAN %d failed (%d)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"WPA deinit of %s failed\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Removal of %s failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, %struct.hostapd_vlan*, i32)* @vlan_if_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_if_add(%struct.hostapd_data* %0, %struct.hostapd_vlan* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.hostapd_vlan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store %struct.hostapd_vlan* %1, %struct.hostapd_vlan** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %34, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @NUM_WEP_KEYS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %16 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %14
  br label %34

28:                                               ; preds = %14
  %29 = load i32, i32* @MSG_ERROR, align 4
  %30 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  %31 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 -1, i32* %4, align 4
  br label %118

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %10

37:                                               ; preds = %10
  %38 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  %39 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @iface_exists(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %45 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  %46 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @hostapd_vlan_if_add(%struct.hostapd_data* %44, i32 %47)
  store i32 %48, i32* %8, align 4
  br label %55

49:                                               ; preds = %37
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %118

53:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54, %43
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %118

60:                                               ; preds = %55
  %61 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  %62 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ifconfig_up(i32 %63)
  %65 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %66 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %60
  %70 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %71 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  %74 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @wpa_auth_ensure_group(i64 %72, i32 %75)
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %69, %60
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %118

82:                                               ; preds = %77
  %83 = load i32, i32* @MSG_ERROR, align 4
  %84 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  %85 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %83, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %90 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  %93 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @wpa_auth_release_group(i64 %91, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %82
  %98 = load i32, i32* @MSG_ERROR, align 4
  %99 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  %100 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %97, %82
  %104 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %105 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  %106 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @hostapd_vlan_if_remove(%struct.hostapd_data* %104, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load i32, i32* @MSG_ERROR, align 4
  %112 = load %struct.hostapd_vlan*, %struct.hostapd_vlan** %6, align 8
  %113 = getelementptr inbounds %struct.hostapd_vlan, %struct.hostapd_vlan* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %110, %103
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %80, %58, %52, %28
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @iface_exists(i32) #1

declare dso_local i32 @hostapd_vlan_if_add(%struct.hostapd_data*, i32) #1

declare dso_local i32 @ifconfig_up(i32) #1

declare dso_local i32 @wpa_auth_ensure_group(i64, i32) #1

declare dso_local i64 @wpa_auth_release_group(i64, i32) #1

declare dso_local i64 @hostapd_vlan_if_remove(%struct.hostapd_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
