; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_rsb.c_rsb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_rsb.c_rsb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsb_softc = type { i32, i32*, i32*, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"rsb\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@compat_data = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot enable clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"cannot de-assert reset\0A\00", align 1
@rsb_spec = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"cannot add iicbus child device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rsb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsb_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.rsb_softc* @device_get_softc(i32 %6)
  store %struct.rsb_softc* %7, %struct.rsb_softc** %4, align 8
  %8 = load %struct.rsb_softc*, %struct.rsb_softc** %4, align 8
  %9 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_nameunit(i32 %10)
  %12 = load i32, i32* @MTX_DEF, align 4
  %13 = call i32 @mtx_init(i32* %9, i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @compat_data, align 4
  %16 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %14, i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rsb_softc*, %struct.rsb_softc** %4, align 8
  %20 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.rsb_softc*, %struct.rsb_softc** %4, align 8
  %23 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %22, i32 0, i32 1
  %24 = call i64 @clk_get_by_ofw_index(i32 %21, i32 0, i32 0, i32** %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load %struct.rsb_softc*, %struct.rsb_softc** %4, align 8
  %28 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @clk_enable(i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %81

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.rsb_softc*, %struct.rsb_softc** %4, align 8
  %40 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %39, i32 0, i32 2
  %41 = call i64 @hwreset_get_by_ofw_idx(i32 %38, i32 0, i32 0, i32** %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load %struct.rsb_softc*, %struct.rsb_softc** %4, align 8
  %45 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @hwreset_deassert(i32* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %81

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %37
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @rsb_spec, align 4
  %57 = load %struct.rsb_softc*, %struct.rsb_softc** %4, align 8
  %58 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %57, i32 0, i32 3
  %59 = call i64 @bus_alloc_resources(i32 %55, i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @ENXIO, align 4
  store i32 %64, i32* %5, align 4
  br label %81

65:                                               ; preds = %54
  %66 = load i32, i32* %3, align 4
  %67 = call i32* @device_add_child(i32 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 -1)
  %68 = load %struct.rsb_softc*, %struct.rsb_softc** %4, align 8
  %69 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %68, i32 0, i32 4
  store i32* %67, i32** %69, align 8
  %70 = load %struct.rsb_softc*, %struct.rsb_softc** %4, align 8
  %71 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @device_printf(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %5, align 4
  br label %81

78:                                               ; preds = %65
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @bus_generic_attach(i32 %79)
  store i32 0, i32* %2, align 4
  br label %111

81:                                               ; preds = %74, %61, %50, %33
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @rsb_spec, align 4
  %84 = load %struct.rsb_softc*, %struct.rsb_softc** %4, align 8
  %85 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %84, i32 0, i32 3
  %86 = call i32 @bus_release_resources(i32 %82, i32 %83, i32* %85)
  %87 = load %struct.rsb_softc*, %struct.rsb_softc** %4, align 8
  %88 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %81
  %92 = load %struct.rsb_softc*, %struct.rsb_softc** %4, align 8
  %93 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @hwreset_release(i32* %94)
  br label %96

96:                                               ; preds = %91, %81
  %97 = load %struct.rsb_softc*, %struct.rsb_softc** %4, align 8
  %98 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.rsb_softc*, %struct.rsb_softc** %4, align 8
  %103 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @clk_release(i32* %104)
  br label %106

106:                                              ; preds = %101, %96
  %107 = load %struct.rsb_softc*, %struct.rsb_softc** %4, align 8
  %108 = getelementptr inbounds %struct.rsb_softc, %struct.rsb_softc* %107, i32 0, i32 0
  %109 = call i32 @mtx_destroy(i32* %108)
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %106, %78
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.rsb_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i64 @clk_get_by_ofw_index(i32, i32, i32, i32**) #1

declare dso_local i32 @clk_enable(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @hwreset_get_by_ofw_idx(i32, i32, i32, i32**) #1

declare dso_local i32 @hwreset_deassert(i32*) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @hwreset_release(i32*) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
