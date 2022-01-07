; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_hdmi.c_imx_hdmi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_hdmi.c_imx_hdmi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_hdmi_softc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i64, i32, i32 }

@imx_hdmi_get_i2c_dev = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot allocate memory resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"ddc-i2c-bus\00", align 1
@IOMUXC_GPR3 = common dso_local global i32 0, align 4
@IOMUXC_GPR3_HDMI_MASK = common dso_local global i32 0, align 4
@IOMUXC_GPR3_HDMI_IPU1_DI0 = common dso_local global i32 0, align 4
@imx_hdmi_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @imx_hdmi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_hdmi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx_hdmi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.imx_hdmi_softc* @device_get_softc(i32 %9)
  store %struct.imx_hdmi_softc* %10, %struct.imx_hdmi_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.imx_hdmi_softc*, %struct.imx_hdmi_softc** %4, align 8
  %13 = getelementptr inbounds %struct.imx_hdmi_softc, %struct.imx_hdmi_softc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @imx_hdmi_get_i2c_dev, align 4
  %16 = load %struct.imx_hdmi_softc*, %struct.imx_hdmi_softc** %4, align 8
  %17 = getelementptr inbounds %struct.imx_hdmi_softc, %struct.imx_hdmi_softc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 8
  store i32 0, i32* %5, align 4
  %19 = load %struct.imx_hdmi_softc*, %struct.imx_hdmi_softc** %4, align 8
  %20 = getelementptr inbounds %struct.imx_hdmi_softc, %struct.imx_hdmi_softc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SYS_RES_MEMORY, align 4
  %24 = load %struct.imx_hdmi_softc*, %struct.imx_hdmi_softc** %4, align 8
  %25 = getelementptr inbounds %struct.imx_hdmi_softc, %struct.imx_hdmi_softc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* @RF_ACTIVE, align 4
  %28 = call i32* @bus_alloc_resource_any(i32 %22, i32 %23, i64* %26, i32 %27)
  %29 = load %struct.imx_hdmi_softc*, %struct.imx_hdmi_softc** %4, align 8
  %30 = getelementptr inbounds %struct.imx_hdmi_softc, %struct.imx_hdmi_softc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* %28, i32** %31, align 8
  %32 = load %struct.imx_hdmi_softc*, %struct.imx_hdmi_softc** %4, align 8
  %33 = getelementptr inbounds %struct.imx_hdmi_softc, %struct.imx_hdmi_softc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %5, align 4
  br label %71

41:                                               ; preds = %1
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @ofw_bus_get_node(i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @OF_getencprop(i64 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64* %8, i32 8)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.imx_hdmi_softc*, %struct.imx_hdmi_softc** %4, align 8
  %49 = getelementptr inbounds %struct.imx_hdmi_softc, %struct.imx_hdmi_softc* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %54

50:                                               ; preds = %41
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.imx_hdmi_softc*, %struct.imx_hdmi_softc** %4, align 8
  %53 = getelementptr inbounds %struct.imx_hdmi_softc, %struct.imx_hdmi_softc* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %47
  %55 = call i32 (...) @imx_ccm_hdmi_enable()
  %56 = load i32, i32* @IOMUXC_GPR3, align 4
  %57 = call i32 @imx_iomux_gpr_get(i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @IOMUXC_GPR3_HDMI_MASK, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @IOMUXC_GPR3_HDMI_IPU1_DI0, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* @IOMUXC_GPR3, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @imx_iomux_gpr_set(i32 %65, i32 %66)
  %68 = load i32, i32* @imx_hdmi_init, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @config_intrhook_oneshot(i32 %68, i32 %69)
  store i32 0, i32* %2, align 4
  br label %75

71:                                               ; preds = %37
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @imx_hdmi_detach(i32 %72)
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %54
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.imx_hdmi_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i64*, i32) #1

declare dso_local i32 @imx_ccm_hdmi_enable(...) #1

declare dso_local i32 @imx_iomux_gpr_get(i32) #1

declare dso_local i32 @imx_iomux_gpr_set(i32, i32) #1

declare dso_local i32 @config_intrhook_oneshot(i32, i32) #1

declare dso_local i32 @imx_hdmi_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
