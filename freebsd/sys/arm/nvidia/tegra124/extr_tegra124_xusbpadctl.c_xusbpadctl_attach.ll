; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_xusbpadctl_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_xusbpadctl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padctl_port = type { i32 (%struct.padctl_softc*, %struct.padctl_port*)*, i32, i32 }
%struct.padctl_softc = type { i32, i32*, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot allocate memory resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"padctl\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Cannot get 'padctl' reset: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Cannot unreset 'padctl' reset: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Cannot parse fdt configuration: %d\0A\00", align 1
@ports_tbl = common dso_local global %struct.padctl_port* null, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"Cannot init port '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xusbpadctl_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xusbpadctl_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.padctl_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.padctl_port*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.padctl_softc* @device_get_softc(i32 %10)
  store %struct.padctl_softc* %11, %struct.padctl_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %14 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @ofw_bus_get_node(i32 %15)
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SYS_RES_MEMORY, align 4
  %19 = load i32, i32* @RF_ACTIVE, align 4
  %20 = call i32* @bus_alloc_resource_any(i32 %17, i32 %18, i32* %6, i32 %19)
  %21 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %22 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %24 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %111

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %34 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %33, i32 0, i32 0
  %35 = call i32 @hwreset_get_by_ofw_name(i32 %32, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i32, i8*, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %111

43:                                               ; preds = %31
  %44 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %45 = getelementptr inbounds %struct.padctl_softc, %struct.padctl_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @hwreset_deassert(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i32, i8*, ...) @device_printf(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %111

55:                                               ; preds = %43
  %56 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %57 = call i32 @load_calibration(%struct.padctl_softc* %56)
  %58 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @parse_fdt(%struct.padctl_softc* %58, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 (i32, i8*, ...) @device_printf(i32 %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %111

68:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %107, %68
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.padctl_port*, %struct.padctl_port** @ports_tbl, align 8
  %72 = call i32 @nitems(%struct.padctl_port* %71)
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %110

74:                                               ; preds = %69
  %75 = load %struct.padctl_port*, %struct.padctl_port** @ports_tbl, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %75, i64 %77
  store %struct.padctl_port* %78, %struct.padctl_port** %8, align 8
  %79 = load %struct.padctl_port*, %struct.padctl_port** %8, align 8
  %80 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  br label %107

84:                                               ; preds = %74
  %85 = load %struct.padctl_port*, %struct.padctl_port** %8, align 8
  %86 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %85, i32 0, i32 0
  %87 = load i32 (%struct.padctl_softc*, %struct.padctl_port*)*, i32 (%struct.padctl_softc*, %struct.padctl_port*)** %86, align 8
  %88 = icmp eq i32 (%struct.padctl_softc*, %struct.padctl_port*)* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %107

90:                                               ; preds = %84
  %91 = load %struct.padctl_port*, %struct.padctl_port** %8, align 8
  %92 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %91, i32 0, i32 0
  %93 = load i32 (%struct.padctl_softc*, %struct.padctl_port*)*, i32 (%struct.padctl_softc*, %struct.padctl_port*)** %92, align 8
  %94 = load %struct.padctl_softc*, %struct.padctl_softc** %4, align 8
  %95 = load %struct.padctl_port*, %struct.padctl_port** %8, align 8
  %96 = call i32 %93(%struct.padctl_softc* %94, %struct.padctl_port* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %90
  %100 = load i32, i32* %3, align 4
  %101 = load %struct.padctl_port*, %struct.padctl_port** %8, align 8
  %102 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i32, i8*, ...) @device_printf(i32 %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %2, align 4
  br label %111

106:                                              ; preds = %90
  br label %107

107:                                              ; preds = %106, %89, %83
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %69

110:                                              ; preds = %69
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %99, %63, %50, %38, %27
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.padctl_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @hwreset_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @hwreset_deassert(i32) #1

declare dso_local i32 @load_calibration(%struct.padctl_softc*) #1

declare dso_local i32 @parse_fdt(%struct.padctl_softc*, i32) #1

declare dso_local i32 @nitems(%struct.padctl_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
