; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_get_fdt_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_get_fdt_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"dc\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Cannot get 'dc' reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Cannot get 'parent' clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Cannot get 'dc' clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"nvidia,head\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Cannot get 'nvidia,head' property\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_softc*, i32)* @get_fdt_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fdt_resources(%struct.dc_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %8 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %11 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %10, i32 0, i32 4
  %12 = call i32 @hwreset_get_by_ofw_name(i32 %9, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %17 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %66

21:                                               ; preds = %2
  %22 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %23 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %26 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %25, i32 0, i32 3
  %27 = call i32 @clk_get_by_ofw_name(i32 %24, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %32 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %66

36:                                               ; preds = %21
  %37 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %38 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %41 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %40, i32 0, i32 2
  %42 = call i32 @clk_get_by_ofw_name(i32 %39, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %47 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %66

51:                                               ; preds = %36
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %54 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @OF_getencprop(i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %55, i32 4)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %61 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %66

65:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %59, %45, %30, %15
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @hwreset_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
