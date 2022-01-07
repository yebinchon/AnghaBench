; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hw_features.c_hostapd_hw_get_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hw_features.c_hostapd_hw_get_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes* }
%struct.hostapd_hw_modes = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_hw_get_channel(%struct.hostapd_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hostapd_hw_modes*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %10 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %12, align 8
  %14 = icmp ne %struct.hostapd_hw_modes* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %17 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @hw_get_chan(%struct.hostapd_hw_modes* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %66

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %30 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %32, align 8
  %34 = icmp ne %struct.hostapd_hw_modes* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %66

36:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %62, %36
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %40 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %38, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %37
  %46 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %47 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %50, i64 %52
  store %struct.hostapd_hw_modes* %53, %struct.hostapd_hw_modes** %8, align 8
  %54 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %8, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @hw_get_chan(%struct.hostapd_hw_modes* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %66

61:                                               ; preds = %45
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %37

65:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %59, %35, %25
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @hw_get_chan(%struct.hostapd_hw_modes*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
