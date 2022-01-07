; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_spi_softc = type { i32, i32, i32, i32, i32*, i32, i32, i32 }

@MTX_DEF = common dso_local global i32 0, align 4
@aw_spi_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@aw_spi_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot setup interrupt handler\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"cannot de-assert reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"cannot get ahb clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"cannot get mod clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"cannot enable ahb clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"cannot enable mod clock\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"spibus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aw_spi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_spi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aw_spi_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.aw_spi_softc* @device_get_softc(i32 %6)
  store %struct.aw_spi_softc* %7, %struct.aw_spi_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %4, align 8
  %10 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 8
  %11 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %4, align 8
  %12 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %11, i32 0, i32 6
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_get_nameunit(i32 %13)
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* %12, i32 %14, i32* null, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @aw_spi_spec, align 4
  %19 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %4, align 8
  %20 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @bus_alloc_resources(i32 %17, i32 %18, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %5, align 4
  br label %116

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %4, align 8
  %31 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @INTR_TYPE_MISC, align 4
  %36 = load i32, i32* @INTR_MPSAFE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @aw_spi_intr, align 4
  %39 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %4, align 8
  %40 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %4, align 8
  %41 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %40, i32 0, i32 5
  %42 = call i64 @bus_setup_intr(i32 %29, i32 %34, i32 %37, i32* null, i32 %38, %struct.aw_spi_softc* %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %28
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @aw_spi_spec, align 4
  %47 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %4, align 8
  %48 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @bus_release_resources(i32 %45, i32 %46, i32* %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %120

54:                                               ; preds = %28
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %4, align 8
  %57 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %56, i32 0, i32 3
  %58 = call i64 @hwreset_get_by_ofw_idx(i32 %55, i32 0, i32 0, i32* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %4, align 8
  %62 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @hwreset_deassert(i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %116

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %54
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %4, align 8
  %74 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %73, i32 0, i32 2
  %75 = call i32 @clk_get_by_ofw_name(i32 %72, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @device_printf(i32 %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %116

81:                                               ; preds = %71
  %82 = load i32, i32* %3, align 4
  %83 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %4, align 8
  %84 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %83, i32 0, i32 1
  %85 = call i32 @clk_get_by_ofw_name(i32 %82, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @device_printf(i32 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %116

91:                                               ; preds = %81
  %92 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %4, align 8
  %93 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @clk_enable(i32 %94)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @device_printf(i32 %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %116

101:                                              ; preds = %91
  %102 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %4, align 8
  %103 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @clk_enable(i32 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @device_printf(i32 %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %116

111:                                              ; preds = %101
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @device_add_child(i32 %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 -1)
  %114 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %4, align 8
  %115 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  store i32 0, i32* %2, align 4
  br label %120

116:                                              ; preds = %108, %98, %88, %78, %67, %24
  %117 = load i32, i32* %3, align 4
  %118 = call i32 @aw_spi_detach(i32 %117)
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %116, %111, %44
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.aw_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.aw_spi_softc*, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i64 @hwreset_get_by_ofw_idx(i32, i32, i32, i32*) #1

declare dso_local i32 @hwreset_deassert(i32) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @aw_spi_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
