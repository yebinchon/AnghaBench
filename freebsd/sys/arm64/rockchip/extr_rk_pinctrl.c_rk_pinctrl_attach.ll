; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_pinctrl.c_rk_pinctrl_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_pinctrl.c_rk_pinctrl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_pinctrl_softc = type { i32*, %struct.rk_pinctrl_conf*, i32, i32 }
%struct.rk_pinctrl_conf = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot get grf driver handle\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"rockchip,rk3399-pinctrl\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"rockchip,rk3288-pinctrl\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"rockchip,pmu\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"cannot get pmu driver handle\0A\00", align 1
@compat_data = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"rockchip,pins\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"rockchip,gpio-bank\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Cannot GPIO subdevice name.\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c" Cannot add GPIO subdevice: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Cannot attach GPIO subdevice: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"Unrecognized format of GPIO subdevice name: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Cannot register GPIO subdevice %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @rk_pinctrl_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_pinctrl_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.rk_pinctrl_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.rk_pinctrl_softc* @device_get_softc(i32* %10)
  store %struct.rk_pinctrl_softc* %11, %struct.rk_pinctrl_softc** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %4, align 8
  %14 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %13, i32 0, i32 0
  store i32* %12, i32** %14, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @ofw_bus_get_node(i32* %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @OF_hasprop(i64 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %4, align 8
  %24 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %23, i32 0, i32 3
  %25 = call i64 @syscon_get_by_ofw_property(i32* %21, i64 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 (i32*, i8*, ...) @device_printf(i32* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %157

31:                                               ; preds = %20, %1
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @ofw_bus_node_is_compatible(i64 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @ofw_bus_node_is_compatible(i64 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %35, %31
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @OF_hasprop(i64 %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i32*, i32** %3, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %4, align 8
  %47 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %46, i32 0, i32 2
  %48 = call i64 @syscon_get_by_ofw_property(i32* %44, i64 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 (i32*, i8*, ...) @device_printf(i32* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %157

54:                                               ; preds = %43, %39
  br label %55

55:                                               ; preds = %54, %35
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* @compat_data, align 4
  %58 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32* %56, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.rk_pinctrl_conf*
  %62 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %4, align 8
  %63 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %62, i32 0, i32 1
  store %struct.rk_pinctrl_conf* %61, %struct.rk_pinctrl_conf** %63, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @fdt_pinctrl_register(i32* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %66 = load i32*, i32** %3, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @simplebus_init(i32* %66, i64 %67)
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @bus_generic_probe(i32* %69)
  %71 = load i64, i64* %5, align 8
  %72 = call i64 @OF_child(i64 %71)
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %149, %55
  %74 = load i64, i64* %5, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %152

76:                                               ; preds = %73
  %77 = load i64, i64* %5, align 8
  %78 = call i64 @ofw_bus_node_is_compatible(i64 %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  br label %149

81:                                               ; preds = %76
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @OF_getprop_alloc(i64 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %7)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %4, align 8
  %88 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 (i32*, i8*, ...) @device_printf(i32* %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %149

91:                                               ; preds = %81
  %92 = load i32*, i32** %3, align 8
  %93 = load i64, i64* %5, align 8
  %94 = call i32* @simplebus_add_device(i32* %92, i64 %93, i32 0, i32* null, i32 -1, i32* null)
  store i32* %94, i32** %6, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i32*, i32** %3, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 (i32*, i8*, ...) @device_printf(i32* %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* %99)
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @OF_prop_free(i8* %101)
  br label %149

103:                                              ; preds = %91
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @device_probe_and_attach(i32* %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %103
  %109 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %4, align 8
  %110 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 (i32*, i8*, ...) @device_printf(i32* %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8* %112)
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @OF_prop_free(i8* %114)
  br label %149

116:                                              ; preds = %103
  %117 = load i8*, i8** %7, align 8
  store i8* %117, i8** %8, align 8
  %118 = call i32 @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %119 = load i8*, i8** %7, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = icmp eq i8* %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %116
  %123 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %4, align 8
  %124 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = call i32 (i32*, i8*, ...) @device_printf(i32* %125, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0), i8* %126)
  %128 = load i8*, i8** %7, align 8
  %129 = call i32 @OF_prop_free(i8* %128)
  br label %149

130:                                              ; preds = %116
  %131 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %4, align 8
  %132 = load i8*, i8** %7, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @rk_pinctrl_register_gpio(%struct.rk_pinctrl_softc* %131, i8* %132, i32* %133)
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %130
  %138 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %4, align 8
  %139 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i8*, i8** %7, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 (i32*, i8*, ...) @device_printf(i32* %140, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i8* %141, i32 %142)
  %144 = load i8*, i8** %7, align 8
  %145 = call i32 @OF_prop_free(i8* %144)
  br label %149

146:                                              ; preds = %130
  %147 = load i8*, i8** %7, align 8
  %148 = call i32 @OF_prop_free(i8* %147)
  br label %149

149:                                              ; preds = %146, %137, %122, %108, %97, %86, %80
  %150 = load i64, i64* %5, align 8
  %151 = call i64 @OF_peer(i64 %150)
  store i64 %151, i64* %5, align 8
  br label %73

152:                                              ; preds = %73
  %153 = load i32*, i32** %3, align 8
  %154 = call i32 @fdt_pinctrl_configure_tree(i32* %153)
  %155 = load i32*, i32** %3, align 8
  %156 = call i32 @bus_generic_attach(i32* %155)
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %152, %50, %27
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.rk_pinctrl_softc* @device_get_softc(i32*) #1

declare dso_local i64 @ofw_bus_get_node(i32*) #1

declare dso_local i64 @OF_hasprop(i64, i8*) #1

declare dso_local i64 @syscon_get_by_ofw_property(i32*, i64, i8*, i32*) #1

declare dso_local i32 @device_printf(i32*, i8*, ...) #1

declare dso_local i64 @ofw_bus_node_is_compatible(i64, i8*) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32*, i32) #1

declare dso_local i32 @fdt_pinctrl_register(i32*, i8*) #1

declare dso_local i32 @simplebus_init(i32*, i64) #1

declare dso_local i32 @bus_generic_probe(i32*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @OF_getprop_alloc(i64, i8*, i8**) #1

declare dso_local i32* @simplebus_add_device(i32*, i64, i32, i32*, i32, i32*) #1

declare dso_local i32 @OF_prop_free(i8*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i32 @strsep(i8**, i8*) #1

declare dso_local i32 @rk_pinctrl_register_gpio(%struct.rk_pinctrl_softc*, i8*, i32*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @fdt_pinctrl_configure_tree(i32*) #1

declare dso_local i32 @bus_generic_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
