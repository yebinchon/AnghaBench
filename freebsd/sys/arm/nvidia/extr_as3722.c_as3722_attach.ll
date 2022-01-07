; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722.c_as3722_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722.c_as3722_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722_softc = type { i32*, i32*, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot allocate interrupt.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@as3722_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Cannot setup interrupt.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @as3722_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.as3722_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.as3722_softc* @device_get_softc(i32 %10)
  store %struct.as3722_softc* %11, %struct.as3722_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %14 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @iicbus_get_addr(i32 %15)
  %17 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %18 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %20 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ofw_bus_get_node(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i8* @device_get_name(i32 %23)
  store i8* %24, i8** %5, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_get_unit(i32 %25)
  store i32 %26, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %27 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %28 = call i32 @LOCK_INIT(%struct.as3722_softc* %27)
  store i32 0, i32* %8, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SYS_RES_IRQ, align 4
  %31 = load i32, i32* @RF_ACTIVE, align 4
  %32 = call i32* @bus_alloc_resource_any(i32 %29, i32 %30, i32* %8, i32 %31)
  %33 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %34 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %36 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %1
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %7, align 4
  br label %108

43:                                               ; preds = %1
  %44 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @as3722_parse_fdt(%struct.as3722_softc* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %108

50:                                               ; preds = %43
  %51 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %52 = call i32 @as3722_get_version(%struct.as3722_softc* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %108

56:                                               ; preds = %50
  %57 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %58 = call i32 @as3722_init(%struct.as3722_softc* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %108

62:                                               ; preds = %56
  %63 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @as3722_regulator_attach(%struct.as3722_softc* %63, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %108

69:                                               ; preds = %62
  %70 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @as3722_gpio_attach(%struct.as3722_softc* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %108

76:                                               ; preds = %69
  %77 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @as3722_rtc_attach(%struct.as3722_softc* %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %108

83:                                               ; preds = %76
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @fdt_pinctrl_register(i32 %84, i32* null)
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @fdt_pinctrl_configure_by_name(i32 %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* %3, align 4
  %89 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %90 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* @INTR_TYPE_MISC, align 4
  %93 = load i32, i32* @INTR_MPSAFE, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @as3722_intr, align 4
  %96 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %97 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %98 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %97, i32 0, i32 1
  %99 = call i32 @bus_setup_intr(i32 %88, i32* %91, i32 %94, i32* null, i32 %95, %struct.as3722_softc* %96, i32** %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %83
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @device_printf(i32 %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %108

105:                                              ; preds = %83
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @bus_generic_attach(i32 %106)
  store i32 %107, i32* %2, align 4
  br label %138

108:                                              ; preds = %102, %82, %75, %68, %61, %55, %49, %39
  %109 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %110 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load i32, i32* %3, align 4
  %115 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %116 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %119 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @bus_teardown_intr(i32 %114, i32* %117, i32* %120)
  br label %122

122:                                              ; preds = %113, %108
  %123 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %124 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* @SYS_RES_IRQ, align 4
  %130 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %131 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @bus_release_resource(i32 %128, i32 %129, i32 0, i32* %132)
  br label %134

134:                                              ; preds = %127, %122
  %135 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %136 = call i32 @LOCK_DESTROY(%struct.as3722_softc* %135)
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %105
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.as3722_softc* @device_get_softc(i32) #1

declare dso_local i32 @iicbus_get_addr(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i8* @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @LOCK_INIT(%struct.as3722_softc*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @as3722_parse_fdt(%struct.as3722_softc*, i32) #1

declare dso_local i32 @as3722_get_version(%struct.as3722_softc*) #1

declare dso_local i32 @as3722_init(%struct.as3722_softc*) #1

declare dso_local i32 @as3722_regulator_attach(%struct.as3722_softc*, i32) #1

declare dso_local i32 @as3722_gpio_attach(%struct.as3722_softc*, i32) #1

declare dso_local i32 @as3722_rtc_attach(%struct.as3722_softc*, i32) #1

declare dso_local i32 @fdt_pinctrl_register(i32, i32*) #1

declare dso_local i32 @fdt_pinctrl_configure_by_name(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.as3722_softc*, i32**) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @LOCK_DESTROY(%struct.as3722_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
