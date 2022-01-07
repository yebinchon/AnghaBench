; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_search_usb3_pad_lane.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_search_usb3_pad_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.padctl_lane = type { i64, i32, i32* }
%struct.padctl_softc = type { i32 }

@lane_map_tbl = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"usb3-ss\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Duplicated mappings found for lanes: %s and %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.padctl_lane* (%struct.padctl_softc*, i32)* @search_usb3_pad_lane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.padctl_lane* @search_usb3_pad_lane(%struct.padctl_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.padctl_lane*, align 8
  %4 = alloca %struct.padctl_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.padctl_lane*, align 8
  %8 = alloca %struct.padctl_lane*, align 8
  store %struct.padctl_softc* %0, %struct.padctl_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.padctl_lane* null, %struct.padctl_lane** %7, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %70, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lane_map_tbl, align 8
  %12 = call i32 @nitems(%struct.TYPE_3__* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %73

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lane_map_tbl, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %15, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %70

24:                                               ; preds = %14
  %25 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lane_map_tbl, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lane_map_tbl, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.padctl_lane* @search_pad_lane(%struct.padctl_softc* %25, i32 %31, i32 %37)
  store %struct.padctl_lane* %38, %struct.padctl_lane** %8, align 8
  %39 = load %struct.padctl_lane*, %struct.padctl_lane** %8, align 8
  %40 = icmp eq %struct.padctl_lane* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %24
  br label %70

42:                                               ; preds = %24
  %43 = load %struct.padctl_lane*, %struct.padctl_lane** %8, align 8
  %44 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.padctl_lane*, %struct.padctl_lane** %8, align 8
  %47 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @strcmp(i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %70

54:                                               ; preds = %42
  %55 = load %struct.padctl_lane*, %struct.padctl_lane** %7, align 8
  %56 = icmp ne %struct.padctl_lane* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %59 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.padctl_lane*, %struct.padctl_lane** %7, align 8
  %62 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.padctl_lane*, %struct.padctl_lane** %8, align 8
  %65 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %66)
  store %struct.padctl_lane* null, %struct.padctl_lane** %3, align 8
  br label %75

68:                                               ; preds = %54
  %69 = load %struct.padctl_lane*, %struct.padctl_lane** %8, align 8
  store %struct.padctl_lane* %69, %struct.padctl_lane** %7, align 8
  br label %70

70:                                               ; preds = %68, %53, %41, %23
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %9

73:                                               ; preds = %9
  %74 = load %struct.padctl_lane*, %struct.padctl_lane** %7, align 8
  store %struct.padctl_lane* %74, %struct.padctl_lane** %3, align 8
  br label %75

75:                                               ; preds = %73, %57
  %76 = load %struct.padctl_lane*, %struct.padctl_lane** %3, align 8
  ret %struct.padctl_lane* %76
}

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local %struct.padctl_lane* @search_pad_lane(%struct.padctl_softc*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
