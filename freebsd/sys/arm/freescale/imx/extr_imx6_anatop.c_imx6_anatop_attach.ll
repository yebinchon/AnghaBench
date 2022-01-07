; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_anatop.c_imx6_anatop_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_anatop.c_imx6_anatop_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_anatop_softc = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.imx6_anatop_softc*, i32 }

@imx6_anatop_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Cannot allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@intr_setup = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"cpu_voltage\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Current CPU voltage in millivolts\00", align 1
@imx6_anatop_sc = common dso_local global %struct.imx6_anatop_softc* null, align 8
@IMX6_ANALOG_PMU_MISC0_SET = common dso_local global i32 0, align 4
@IMX6_ANALOG_PMU_MISC0_SELFBIASOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @imx6_anatop_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6_anatop_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx6_anatop_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.imx6_anatop_softc* @device_get_softc(i32 %5)
  store %struct.imx6_anatop_softc* %6, %struct.imx6_anatop_softc** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %9 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @imx6_anatop_spec, align 4
  %12 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %13 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @bus_alloc_resources(i32 %10, i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %4, align 4
  br label %51

21:                                               ; preds = %1
  %22 = load i32, i32* @intr_setup, align 4
  %23 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %24 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 8
  %26 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %27 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %28 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.imx6_anatop_softc* %26, %struct.imx6_anatop_softc** %29, align 8
  %30 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %31 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %30, i32 0, i32 3
  %32 = call i32 @config_intrhook_establish(%struct.TYPE_2__* %31)
  %33 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %34 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @device_get_sysctl_ctx(i32 %35)
  %37 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %38 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @device_get_sysctl_tree(i32 %39)
  %41 = call i32 @SYSCTL_CHILDREN(i32 %40)
  %42 = load i32, i32* @OID_AUTO, align 4
  %43 = load i32, i32* @CTLFLAG_RD, align 4
  %44 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %45 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %44, i32 0, i32 1
  %46 = call i32 @SYSCTL_ADD_UINT(i32 %36, i32 %41, i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32* %45, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  store %struct.imx6_anatop_softc* %47, %struct.imx6_anatop_softc** @imx6_anatop_sc, align 8
  %48 = load i32, i32* @IMX6_ANALOG_PMU_MISC0_SET, align 4
  %49 = load i32, i32* @IMX6_ANALOG_PMU_MISC0_SELFBIASOFF, align 4
  %50 = call i32 @imx6_anatop_write_4(i32 %48, i32 %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %21, %17
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @imx6_anatop_spec, align 4
  %57 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %58 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @bus_release_resources(i32 %55, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %54, %51
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.imx6_anatop_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @config_intrhook_establish(%struct.TYPE_2__*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @imx6_anatop_write_4(i32, i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
