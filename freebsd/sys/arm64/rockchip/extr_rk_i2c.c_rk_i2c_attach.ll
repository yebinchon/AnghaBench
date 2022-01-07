; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_i2c.c_rk_i2c_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_i2c.c_rk_i2c_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_i2c_softc = type { i32*, i32*, i32*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"rk_i2c\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@rk_i2c_spec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@rk_i2c_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"cannot setup interrupt handler\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"cannot get i2c clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"cannot enable i2c clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"cannot get pclk clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"cannot enable pclk clock\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"cannot add iicbus child device\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Failed to detach\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rk_i2c_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_i2c_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rk_i2c_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.rk_i2c_softc* @device_get_softc(i32 %6)
  store %struct.rk_i2c_softc* %7, %struct.rk_i2c_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %10 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 8
  %11 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %12 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %11, i32 0, i32 5
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_get_nameunit(i32 %13)
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* %12, i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @rk_i2c_spec, align 4
  %19 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %20 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @bus_alloc_resources(i32 %17, i32 %18, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %5, align 4
  br label %124

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %31 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @INTR_TYPE_MISC, align 4
  %36 = load i32, i32* @INTR_MPSAFE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @rk_i2c_intr, align 4
  %39 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %40 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %41 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %40, i32 0, i32 4
  %42 = call i64 @bus_setup_intr(i32 %29, i32 %34, i32 %37, i32* null, i32 %38, %struct.rk_i2c_softc* %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %28
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @rk_i2c_spec, align 4
  %47 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %48 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @bus_release_resources(i32 %45, i32 %46, i32* %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %133

54:                                               ; preds = %28
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @ofw_bus_get_node(i32 %56)
  %58 = call i32 @clk_set_assigned(i32 %55, i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %61 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %60, i32 0, i32 1
  %62 = call i32 @clk_get_by_ofw_name(i32 %59, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32** %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %124

68:                                               ; preds = %54
  %69 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %70 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @clk_enable(i32* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @device_printf(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %124

78:                                               ; preds = %68
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %81 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %80, i32 0, i32 2
  %82 = call i32 @clk_get_by_ofw_name(i32 %79, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32** %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @ENOENT, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @device_printf(i32 %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %124

92:                                               ; preds = %85, %78
  %93 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %94 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %92
  %98 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %99 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @clk_enable(i32* %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @device_printf(i32 %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %124

107:                                              ; preds = %97
  br label %108

108:                                              ; preds = %107, %92
  %109 = load i32, i32* %3, align 4
  %110 = call i32* @device_add_child(i32 %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 -1)
  %111 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %112 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %111, i32 0, i32 0
  store i32* %110, i32** %112, align 8
  %113 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %114 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %108
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @device_printf(i32 %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %120 = load i32, i32* @ENXIO, align 4
  store i32 %120, i32* %5, align 4
  br label %124

121:                                              ; preds = %108
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @bus_generic_attach(i32 %122)
  store i32 0, i32* %2, align 4
  br label %133

124:                                              ; preds = %117, %104, %89, %75, %65, %24
  %125 = load i32, i32* %3, align 4
  %126 = call i64 @rk_i2c_detach(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @device_printf(i32 %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %124
  %132 = load i32, i32* %5, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %131, %121, %44
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.rk_i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.rk_i2c_softc*, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @clk_set_assigned(i32, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32**) #1

declare dso_local i32 @clk_enable(i32*) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i64 @rk_i2c_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
