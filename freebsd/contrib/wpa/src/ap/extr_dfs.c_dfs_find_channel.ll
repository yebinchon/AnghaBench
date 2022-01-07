; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_find_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dfs.c_dfs_find_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.TYPE_2__*, %struct.hostapd_hw_modes* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.hostapd_hw_modes = type { i32, %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"DFS new chan checking %d channels\00", align 1
@HOSTAPD_CHAN_WIDTH_40P = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Selected ch. #%d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Adding channel: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*, %struct.hostapd_channel_data**, i32, i32)* @dfs_find_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfs_find_channel(%struct.hostapd_iface* %0, %struct.hostapd_channel_data** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_iface*, align 8
  %7 = alloca %struct.hostapd_channel_data**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hostapd_hw_modes*, align 8
  %11 = alloca %struct.hostapd_channel_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %6, align 8
  store %struct.hostapd_channel_data** %1, %struct.hostapd_channel_data*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %17 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %16, i32 0, i32 1
  %18 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %17, align 8
  store %struct.hostapd_hw_modes* %18, %struct.hostapd_hw_modes** %10, align 8
  %19 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %20 = call i32 @dfs_get_used_n_chans(%struct.hostapd_iface* %19, i32* %15)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = load i32, i32* %14, align 4
  %23 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %101, %4
  %25 = load i32, i32* %12, align 4
  %26 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %27 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %104

30:                                               ; preds = %24
  %31 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %32 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %31, i32 0, i32 1
  %33 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %33, i64 %35
  store %struct.hostapd_channel_data* %36, %struct.hostapd_channel_data** %11, align 8
  %37 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %38 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %30
  %44 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %45 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %11, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @dfs_is_chan_allowed(%struct.hostapd_channel_data* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %11, align 8
  %57 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @HOSTAPD_CHAN_WIDTH_40P, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55, %50
  br label %101

63:                                               ; preds = %55, %43, %30
  %64 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @dfs_chan_range_available(%struct.hostapd_hw_modes* %64, i32 %65, i32 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  br label %101

71:                                               ; preds = %63
  %72 = load %struct.hostapd_iface*, %struct.hostapd_iface** %6, align 8
  %73 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %11, align 8
  %74 = call i32 @is_in_chanlist(%struct.hostapd_iface* %72, %struct.hostapd_channel_data* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %101

77:                                               ; preds = %71
  %78 = load %struct.hostapd_channel_data**, %struct.hostapd_channel_data*** %7, align 8
  %79 = icmp ne %struct.hostapd_channel_data** %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i32, i32* @MSG_DEBUG, align 4
  %86 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %11, align 8
  %87 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @wpa_printf(i32 %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %11, align 8
  %91 = load %struct.hostapd_channel_data**, %struct.hostapd_channel_data*** %7, align 8
  store %struct.hostapd_channel_data* %90, %struct.hostapd_channel_data** %91, align 8
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %5, align 4
  br label %106

93:                                               ; preds = %80, %77
  %94 = load i32, i32* @MSG_DEBUG, align 4
  %95 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %11, align 8
  %96 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @wpa_printf(i32 %94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %93, %76, %70, %62
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %24

104:                                              ; preds = %24
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %84
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @dfs_get_used_n_chans(%struct.hostapd_iface*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @dfs_is_chan_allowed(%struct.hostapd_channel_data*, i32) #1

declare dso_local i32 @dfs_chan_range_available(%struct.hostapd_hw_modes*, i32, i32, i32) #1

declare dso_local i32 @is_in_chanlist(%struct.hostapd_iface*, %struct.hostapd_channel_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
