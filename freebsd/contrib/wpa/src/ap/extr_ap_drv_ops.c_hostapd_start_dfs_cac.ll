; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_start_dfs_cac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_start_dfs_cac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i32, i32, %struct.TYPE_3__*, %struct.hostapd_hw_modes*, %struct.hostapd_data** }
%struct.TYPE_3__ = type { i32 }
%struct.hostapd_hw_modes = type { i32*, i32 }
%struct.hostapd_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, %struct.hostapd_freq_params*)* }
%struct.hostapd_freq_params = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Can't start DFS CAC, DFS functionality is not enabled\00", align 1
@IEEE80211_MODE_AP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Can't set freq params\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_start_dfs_cac(%struct.hostapd_iface* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.hostapd_iface*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.hostapd_data*, align 8
  %25 = alloca %struct.hostapd_freq_params, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.hostapd_hw_modes*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  %28 = load %struct.hostapd_iface*, %struct.hostapd_iface** %13, align 8
  %29 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %28, i32 0, i32 4
  %30 = load %struct.hostapd_data**, %struct.hostapd_data*** %29, align 8
  %31 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %30, i64 0
  %32 = load %struct.hostapd_data*, %struct.hostapd_data** %31, align 8
  store %struct.hostapd_data* %32, %struct.hostapd_data** %24, align 8
  %33 = load %struct.hostapd_iface*, %struct.hostapd_iface** %13, align 8
  %34 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %33, i32 0, i32 3
  %35 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %34, align 8
  store %struct.hostapd_hw_modes* %35, %struct.hostapd_hw_modes** %27, align 8
  %36 = load %struct.hostapd_data*, %struct.hostapd_data** %24, align 8
  %37 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %11
  %41 = load %struct.hostapd_data*, %struct.hostapd_data** %24, align 8
  %42 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (i32, %struct.hostapd_freq_params*)*, i32 (i32, %struct.hostapd_freq_params*)** %44, align 8
  %46 = icmp ne i32 (i32, %struct.hostapd_freq_params*)* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %27, align 8
  %49 = icmp ne %struct.hostapd_hw_modes* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47, %40, %11
  store i32 0, i32* %12, align 4
  br label %105

51:                                               ; preds = %47
  %52 = load %struct.hostapd_iface*, %struct.hostapd_iface** %13, align 8
  %53 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* @MSG_ERROR, align 4
  %60 = call i32 @wpa_printf(i32 %59, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  br label %105

61:                                               ; preds = %51
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %22, align 4
  %71 = load i32, i32* %23, align 4
  %72 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %27, align 8
  %73 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %27, align 8
  %76 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @IEEE80211_MODE_AP, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = call i64 @hostapd_set_freq_params(%struct.hostapd_freq_params* %25, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %74, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %61
  %83 = load i32, i32* @MSG_ERROR, align 4
  %84 = call i32 @wpa_printf(i32 %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  br label %105

85:                                               ; preds = %61
  %86 = load %struct.hostapd_data*, %struct.hostapd_data** %24, align 8
  %87 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32 (i32, %struct.hostapd_freq_params*)*, i32 (i32, %struct.hostapd_freq_params*)** %89, align 8
  %91 = load %struct.hostapd_data*, %struct.hostapd_data** %24, align 8
  %92 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 %90(i32 %93, %struct.hostapd_freq_params* %25)
  store i32 %94, i32* %26, align 4
  %95 = load i32, i32* %26, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %85
  %98 = load %struct.hostapd_iface*, %struct.hostapd_iface** %13, align 8
  %99 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.hostapd_iface*, %struct.hostapd_iface** %13, align 8
  %101 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %100, i32 0, i32 1
  %102 = call i32 @os_get_reltime(i32* %101)
  br label %103

103:                                              ; preds = %97, %85
  %104 = load i32, i32* %26, align 4
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %103, %82, %58, %50
  %106 = load i32, i32* %12, align 4
  ret i32 %106
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @hostapd_set_freq_params(%struct.hostapd_freq_params*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @os_get_reltime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
