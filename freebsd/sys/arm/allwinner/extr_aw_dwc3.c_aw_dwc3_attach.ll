; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_dwc3.c_aw_dwc3_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_dwc3.c_aw_dwc3_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_dwc3_softc = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Cannot get bus clock\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Could not enable clock %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Cannot deassert reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"could not get ranges\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @aw_dwc3_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_dwc3_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.aw_dwc3_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.aw_dwc3_softc* @device_get_softc(i32* %9)
  store %struct.aw_dwc3_softc* %10, %struct.aw_dwc3_softc** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.aw_dwc3_softc*, %struct.aw_dwc3_softc** %4, align 8
  %13 = getelementptr inbounds %struct.aw_dwc3_softc, %struct.aw_dwc3_softc* %12, i32 0, i32 3
  store i32* %11, i32** %13, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @ofw_bus_get_node(i32* %14)
  store i64 %15, i64* %6, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.aw_dwc3_softc*, %struct.aw_dwc3_softc** %4, align 8
  %18 = getelementptr inbounds %struct.aw_dwc3_softc, %struct.aw_dwc3_softc* %17, i32 0, i32 2
  %19 = call i64 @clk_get_by_ofw_name(i32* %16, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 (i32*, i8*, ...) @device_printf(i32* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %93

25:                                               ; preds = %1
  %26 = load %struct.aw_dwc3_softc*, %struct.aw_dwc3_softc** %4, align 8
  %27 = getelementptr inbounds %struct.aw_dwc3_softc, %struct.aw_dwc3_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @clk_enable(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.aw_dwc3_softc*, %struct.aw_dwc3_softc** %4, align 8
  %35 = getelementptr inbounds %struct.aw_dwc3_softc, %struct.aw_dwc3_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @clk_get_name(i32 %36)
  %38 = call i32 (i32*, i8*, ...) @device_printf(i32* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  br label %93

40:                                               ; preds = %25
  %41 = load i32*, i32** %3, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.aw_dwc3_softc*, %struct.aw_dwc3_softc** %4, align 8
  %44 = getelementptr inbounds %struct.aw_dwc3_softc, %struct.aw_dwc3_softc* %43, i32 0, i32 1
  %45 = call i64 @hwreset_get_by_ofw_name(i32* %41, i64 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load %struct.aw_dwc3_softc*, %struct.aw_dwc3_softc** %4, align 8
  %49 = getelementptr inbounds %struct.aw_dwc3_softc, %struct.aw_dwc3_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @hwreset_deassert(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 (i32*, i8*, ...) @device_printf(i32* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %2, align 4
  br label %93

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %40
  %59 = load i32*, i32** %3, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @simplebus_init(i32* %59, i64 %60)
  %62 = load i64, i64* %6, align 8
  %63 = load %struct.aw_dwc3_softc*, %struct.aw_dwc3_softc** %4, align 8
  %64 = getelementptr inbounds %struct.aw_dwc3_softc, %struct.aw_dwc3_softc* %63, i32 0, i32 0
  %65 = call i64 @simplebus_fill_ranges(i64 %62, i32* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 (i32*, i8*, ...) @device_printf(i32* %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* @ENXIO, align 4
  store i32 %70, i32* %2, align 4
  br label %93

71:                                               ; preds = %58
  %72 = load i64, i64* %6, align 8
  %73 = call i64 @OF_child(i64 %72)
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %87, %71
  %75 = load i64, i64* %7, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = load i32*, i32** %3, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32* @simplebus_add_device(i32* %78, i64 %79, i32 0, i32* null, i32 -1, i32* null)
  store i32* %80, i32** %5, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @device_probe_and_attach(i32* %84)
  br label %86

86:                                               ; preds = %83, %77
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %7, align 8
  %89 = call i64 @OF_peer(i64 %88)
  store i64 %89, i64* %7, align 8
  br label %74

90:                                               ; preds = %74
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @bus_generic_attach(i32* %91)
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %90, %67, %53, %32, %21
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.aw_dwc3_softc* @device_get_softc(i32*) #1

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i64 @clk_get_by_ofw_name(i32*, i32, i8*, i32*) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_get_name(i32) #1

declare dso_local i64 @hwreset_get_by_ofw_name(i32*, i64, i8*, i32*) #1

declare dso_local i64 @hwreset_deassert(i32) #1

declare dso_local i32 @simplebus_init(i32*, i64) #1

declare dso_local i64 @simplebus_fill_ranges(i64, i32*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32* @simplebus_add_device(i32*, i64, i32, i32*, i32, i32*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
