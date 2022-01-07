; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_coretemp.c_tegra124_coretemp_ofw_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_coretemp.c_tegra124_coretemp_ofw_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra124_coretemp_softc = type { i32, i32*, i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"thermal-zones\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot find 'thermal-zones'.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Cannot find 'cpu'\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"thermal-sensors\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"#thermal-sensor-cells\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Cannot parse 'thermal-sensors' property.\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Invalid format of 'thermal-sensors' property(%d).\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Cannot find thermal sensors device.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra124_coretemp_softc*)* @tegra124_coretemp_ofw_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_coretemp_ofw_parse(%struct.tegra124_coretemp_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra124_coretemp_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.tegra124_coretemp_softc* %0, %struct.tegra124_coretemp_softc** %3, align 8
  %9 = call i64 @OF_peer(i32 0)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @ofw_bus_find_child(i64 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.tegra124_coretemp_softc*, %struct.tegra124_coretemp_softc** %3, align 8
  %16 = getelementptr inbounds %struct.tegra124_coretemp_softc, %struct.tegra124_coretemp_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i32, i8*, ...) @device_printf(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %76

20:                                               ; preds = %1
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @ofw_bus_find_child(i64 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.tegra124_coretemp_softc*, %struct.tegra124_coretemp_softc** %3, align 8
  %27 = getelementptr inbounds %struct.tegra124_coretemp_softc, %struct.tegra124_coretemp_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %76

31:                                               ; preds = %20
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @ofw_bus_parse_xref_list_alloc(i64 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 0, i64* %7, i32* %5, i32** %8)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.tegra124_coretemp_softc*, %struct.tegra124_coretemp_softc** %3, align 8
  %38 = getelementptr inbounds %struct.tegra124_coretemp_softc, %struct.tegra124_coretemp_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %76

42:                                               ; preds = %31
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.tegra124_coretemp_softc*, %struct.tegra124_coretemp_softc** %3, align 8
  %47 = getelementptr inbounds %struct.tegra124_coretemp_softc, %struct.tegra124_coretemp_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %2, align 4
  br label %76

52:                                               ; preds = %42
  %53 = load %struct.tegra124_coretemp_softc*, %struct.tegra124_coretemp_softc** %3, align 8
  %54 = getelementptr inbounds %struct.tegra124_coretemp_softc, %struct.tegra124_coretemp_softc* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 256, %55
  %57 = load %struct.tegra124_coretemp_softc*, %struct.tegra124_coretemp_softc** %3, align 8
  %58 = getelementptr inbounds %struct.tegra124_coretemp_softc, %struct.tegra124_coretemp_softc* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @OF_prop_free(i32* %59)
  %61 = load i64, i64* %7, align 8
  %62 = call i32* @OF_device_from_xref(i64 %61)
  %63 = load %struct.tegra124_coretemp_softc*, %struct.tegra124_coretemp_softc** %3, align 8
  %64 = getelementptr inbounds %struct.tegra124_coretemp_softc, %struct.tegra124_coretemp_softc* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load %struct.tegra124_coretemp_softc*, %struct.tegra124_coretemp_softc** %3, align 8
  %66 = getelementptr inbounds %struct.tegra124_coretemp_softc, %struct.tegra124_coretemp_softc* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %52
  %70 = load %struct.tegra124_coretemp_softc*, %struct.tegra124_coretemp_softc** %3, align 8
  %71 = getelementptr inbounds %struct.tegra124_coretemp_softc, %struct.tegra124_coretemp_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, ...) @device_printf(i32 %72, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %2, align 4
  br label %76

75:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %69, %45, %36, %25, %14
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @OF_peer(i32) #1

declare dso_local i64 @ofw_bus_find_child(i64, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ofw_bus_parse_xref_list_alloc(i64, i8*, i8*, i32, i64*, i32*, i32**) #1

declare dso_local i32 @OF_prop_free(i32*) #1

declare dso_local i32* @OF_device_from_xref(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
