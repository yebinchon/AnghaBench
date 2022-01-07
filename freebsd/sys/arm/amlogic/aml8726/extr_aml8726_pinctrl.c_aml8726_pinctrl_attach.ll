; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_pinctrl.c_aml8726_pinctrl_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_pinctrl.c_aml8726_pinctrl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_pinctrl_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@aml8726_soc_hw_rev = common dso_local global i32 0, align 4
@aml8726_m3_pinctrl = common dso_local global i32 0, align 4
@aml8726_m3_pkg_pin = common dso_local global i32 0, align 4
@aml8726_m6_pinctrl = common dso_local global i32 0, align 4
@aml8726_m6_pkg_pin = common dso_local global i32 0, align 4
@aml8726_m8_pinctrl = common dso_local global i32 0, align 4
@aml8726_m8_pkg_pin = common dso_local global i32 0, align 4
@aml8726_m8b_pinctrl = common dso_local global i32 0, align 4
@aml8726_m8b_pkg_pin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unsupported SoC\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@aml8726_pinctrl_spec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"could not allocate resources for device\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"amlogic,pins\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aml8726_pinctrl_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_pinctrl_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aml8726_pinctrl_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.aml8726_pinctrl_softc* @device_get_softc(i32 %5)
  store %struct.aml8726_pinctrl_softc* %6, %struct.aml8726_pinctrl_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %4, align 8
  %9 = getelementptr inbounds %struct.aml8726_pinctrl_softc, %struct.aml8726_pinctrl_softc* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %4, align 8
  %11 = getelementptr inbounds %struct.aml8726_pinctrl_softc, %struct.aml8726_pinctrl_softc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @aml8726_soc_hw_rev, align 4
  switch i32 %13, label %56 [
    i32 131, label %14
    i32 130, label %23
    i32 129, label %32
    i32 128, label %44
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @aml8726_m3_pinctrl, align 4
  %16 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %4, align 8
  %17 = getelementptr inbounds %struct.aml8726_pinctrl_softc, %struct.aml8726_pinctrl_softc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @aml8726_m3_pkg_pin, align 4
  %20 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %4, align 8
  %21 = getelementptr inbounds %struct.aml8726_pinctrl_softc, %struct.aml8726_pinctrl_softc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  br label %60

23:                                               ; preds = %1
  %24 = load i32, i32* @aml8726_m6_pinctrl, align 4
  %25 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %4, align 8
  %26 = getelementptr inbounds %struct.aml8726_pinctrl_softc, %struct.aml8726_pinctrl_softc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @aml8726_m6_pkg_pin, align 4
  %29 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %4, align 8
  %30 = getelementptr inbounds %struct.aml8726_pinctrl_softc, %struct.aml8726_pinctrl_softc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  br label %60

32:                                               ; preds = %1
  %33 = load i32, i32* @aml8726_m8_pinctrl, align 4
  %34 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %4, align 8
  %35 = getelementptr inbounds %struct.aml8726_pinctrl_softc, %struct.aml8726_pinctrl_softc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @aml8726_m8_pkg_pin, align 4
  %38 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %4, align 8
  %39 = getelementptr inbounds %struct.aml8726_pinctrl_softc, %struct.aml8726_pinctrl_softc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %4, align 8
  %42 = getelementptr inbounds %struct.aml8726_pinctrl_softc, %struct.aml8726_pinctrl_softc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  br label %60

44:                                               ; preds = %1
  %45 = load i32, i32* @aml8726_m8b_pinctrl, align 4
  %46 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %4, align 8
  %47 = getelementptr inbounds %struct.aml8726_pinctrl_softc, %struct.aml8726_pinctrl_softc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @aml8726_m8b_pkg_pin, align 4
  %50 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %4, align 8
  %51 = getelementptr inbounds %struct.aml8726_pinctrl_softc, %struct.aml8726_pinctrl_softc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %4, align 8
  %54 = getelementptr inbounds %struct.aml8726_pinctrl_softc, %struct.aml8726_pinctrl_softc* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  br label %60

56:                                               ; preds = %1
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %2, align 4
  br label %79

60:                                               ; preds = %44, %32, %23, %14
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @aml8726_pinctrl_spec, align 4
  %63 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %4, align 8
  %64 = getelementptr inbounds %struct.aml8726_pinctrl_softc, %struct.aml8726_pinctrl_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @bus_alloc_resources(i32 %61, i32 %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @ENXIO, align 4
  store i32 %71, i32* %2, align 4
  br label %79

72:                                               ; preds = %60
  %73 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %4, align 8
  %74 = call i32 @AML_PINCTRL_LOCK_INIT(%struct.aml8726_pinctrl_softc* %73)
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @fdt_pinctrl_register(i32 %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @fdt_pinctrl_configure_tree(i32 %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %72, %68, %56
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.aml8726_pinctrl_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @AML_PINCTRL_LOCK_INIT(%struct.aml8726_pinctrl_softc*) #1

declare dso_local i32 @fdt_pinctrl_register(i32, i8*) #1

declare dso_local i32 @fdt_pinctrl_configure_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
