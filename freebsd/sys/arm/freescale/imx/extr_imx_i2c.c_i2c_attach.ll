; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_i2c.c_i2c_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_i2c.c_i2c_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32, i32, i32, i32, i32, i32*, i32*, i64 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not allocate resources\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"could not add iicbus child\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Enable debug; 1=reads/writes, 2=add starts/stops\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"scl-gpios\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"sda-gpios\00", align 1
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"pinctrl-names\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"pinctrl-%d\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"pinctrl-0\00", align 1
@bus_generic_attach = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @i2c_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [16 x i8], align 16
  %5 = alloca %struct.i2c_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.i2c_softc* @device_get_softc(i32 %9)
  store %struct.i2c_softc* %10, %struct.i2c_softc** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.i2c_softc*, %struct.i2c_softc** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.i2c_softc*, %struct.i2c_softc** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %14, i32 0, i32 7
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SYS_RES_MEMORY, align 4
  %18 = load %struct.i2c_softc*, %struct.i2c_softc** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %18, i32 0, i32 7
  %20 = load i32, i32* @RF_ACTIVE, align 4
  %21 = call i32* @bus_alloc_resource_any(i32 %16, i32 %17, i64* %19, i32 %20)
  %22 = load %struct.i2c_softc*, %struct.i2c_softc** %5, align 8
  %23 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %22, i32 0, i32 6
  store i32* %21, i32** %23, align 8
  %24 = load %struct.i2c_softc*, %struct.i2c_softc** %5, align 8
  %25 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %127

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = call i32* @device_add_child(i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %35 = load %struct.i2c_softc*, %struct.i2c_softc** %5, align 8
  %36 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %35, i32 0, i32 5
  store i32* %34, i32** %36, align 8
  %37 = load %struct.i2c_softc*, %struct.i2c_softc** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %2, align 4
  br label %127

45:                                               ; preds = %32
  %46 = load %struct.i2c_softc*, %struct.i2c_softc** %5, align 8
  %47 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @device_get_sysctl_ctx(i32 %48)
  %50 = load %struct.i2c_softc*, %struct.i2c_softc** %5, align 8
  %51 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @device_get_sysctl_tree(i32 %52)
  %54 = call i32 @SYSCTL_CHILDREN(i32 %53)
  %55 = load i32, i32* @OID_AUTO, align 4
  %56 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %57 = load %struct.i2c_softc*, %struct.i2c_softc** %5, align 8
  %58 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %57, i32 0, i32 4
  %59 = call i32 @SYSCTL_ADD_INT(i32 %49, i32 %54, i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32* %58, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %60 = load %struct.i2c_softc*, %struct.i2c_softc** %5, align 8
  %61 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ofw_bus_get_node(i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.i2c_softc*, %struct.i2c_softc** %5, align 8
  %67 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %66, i32 0, i32 2
  %68 = call i32 @gpio_pin_get_by_ofw_property(i32 %64, i32 %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %45
  br label %122

72:                                               ; preds = %45
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.i2c_softc*, %struct.i2c_softc** %5, align 8
  %76 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %75, i32 0, i32 1
  %77 = call i32 @gpio_pin_get_by_ofw_property(i32 %73, i32 %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %122

81:                                               ; preds = %72
  %82 = load %struct.i2c_softc*, %struct.i2c_softc** %5, align 8
  %83 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %86 = call i32 @gpio_pin_setflags(i32 %84, i32 %85)
  %87 = load %struct.i2c_softc*, %struct.i2c_softc** %5, align 8
  %88 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %91 = call i32 @gpio_pin_setflags(i32 %89, i32 %90)
  %92 = load %struct.i2c_softc*, %struct.i2c_softc** %5, align 8
  %93 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @gpio_pin_set_active(i32 %94, i32 1)
  %96 = load %struct.i2c_softc*, %struct.i2c_softc** %5, align 8
  %97 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @gpio_pin_set_active(i32 %98, i32 1)
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @ofw_bus_find_string_index(i32 %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* %8)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %81
  %105 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @snprintf(i8* %105, i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = call i64 @OF_hasprop(i32 %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = load i32, i32* %6, align 4
  %113 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %114 = call i64 @OF_hasprop(i32 %112, i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.i2c_softc*, %struct.i2c_softc** %5, align 8
  %119 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %111, %104
  br label %121

121:                                              ; preds = %120, %81
  br label %122

122:                                              ; preds = %121, %80, %71
  %123 = load i64, i64* @bus_generic_attach, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i32, i32* %3, align 4
  %126 = call i32 @config_intrhook_oneshot(i32 %124, i32 %125)
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %122, %41, %28
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @gpio_pin_get_by_ofw_property(i32, i32, i8*, i32*) #1

declare dso_local i32 @gpio_pin_setflags(i32, i32) #1

declare dso_local i32 @gpio_pin_set_active(i32, i32) #1

declare dso_local i32 @ofw_bus_find_string_index(i32, i8*, i8*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @config_intrhook_oneshot(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
