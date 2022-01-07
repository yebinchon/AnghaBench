; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hw_features.c_hostapd_is_usable_chans.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hw_features.c_hostapd_is_usable_chans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.hostapd_channel_data = type { i32 }

@HOSTAPD_CHAN_WIDTH_40P = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_WIDTH_40M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*)* @hostapd_is_usable_chans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_is_usable_chans(%struct.hostapd_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_channel_data*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  %6 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %7 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %10 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.hostapd_channel_data* @hw_get_channel_chan(i32 %8, i32 %13, i32* null)
  store %struct.hostapd_channel_data* %14, %struct.hostapd_channel_data** %5, align 8
  %15 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %16 = icmp ne %struct.hostapd_channel_data* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %105

18:                                               ; preds = %1
  %19 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %20 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %21 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @hostapd_is_usable_chan(%struct.hostapd_iface* %19, i32 %24, i32 1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %105

28:                                               ; preds = %18
  %29 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %30 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %105

36:                                               ; preds = %28
  %37 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %38 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %36
  %44 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %45 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %46 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %51 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 4
  %56 = add nsw i32 %49, %55
  %57 = call i32 @hostapd_is_usable_chan(%struct.hostapd_iface* %44, i32 %56, i32 0)
  store i32 %57, i32* %2, align 4
  br label %105

58:                                               ; preds = %36
  %59 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %60 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 4
  store i32 %64, i32* %4, align 4
  %65 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @hostapd_is_usable_chan(%struct.hostapd_iface* %65, i32 %66, i32 0)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %58
  %70 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %71 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @HOSTAPD_CHAN_WIDTH_40P, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %78 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  store i32 1, i32* %2, align 4
  br label %105

81:                                               ; preds = %69, %58
  %82 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %83 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 4
  store i32 %87, i32* %4, align 4
  %88 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @hostapd_is_usable_chan(%struct.hostapd_iface* %88, i32 %89, i32 0)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %81
  %93 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %94 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @HOSTAPD_CHAN_WIDTH_40M, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %101 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  store i32 -1, i32* %103, align 4
  store i32 1, i32* %2, align 4
  br label %105

104:                                              ; preds = %92, %81
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %99, %76, %43, %35, %27, %17
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.hostapd_channel_data* @hw_get_channel_chan(i32, i32, i32*) #1

declare dso_local i32 @hostapd_is_usable_chan(%struct.hostapd_iface*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
