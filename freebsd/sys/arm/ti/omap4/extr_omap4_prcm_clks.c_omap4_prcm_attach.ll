; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_prcm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_prcm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap4_prcm_softc = type { i32, i32*, i32 }
%struct.ofw_compat_data = type { i64 }

@compat_data = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@omap4_prcm_reset = common dso_local global i32 0, align 4
@ti_cpu_reset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @omap4_prcm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_prcm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap4_prcm_softc*, align 8
  %5 = alloca %struct.ofw_compat_data*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.omap4_prcm_softc* @device_get_softc(i32 %6)
  store %struct.omap4_prcm_softc* %7, %struct.omap4_prcm_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @compat_data, align 4
  %10 = call %struct.ofw_compat_data* @ofw_bus_search_compatible(i32 %8, i32 %9)
  store %struct.ofw_compat_data* %10, %struct.ofw_compat_data** %5, align 8
  %11 = load %struct.ofw_compat_data*, %struct.ofw_compat_data** %5, align 8
  %12 = getelementptr inbounds %struct.ofw_compat_data, %struct.ofw_compat_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %4, align 8
  %16 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SYS_RES_MEMORY, align 4
  %19 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %4, align 8
  %20 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %19, i32 0, i32 2
  %21 = load i32, i32* @RF_ACTIVE, align 4
  %22 = call i32* @bus_alloc_resource_any(i32 %17, i32 %18, i32* %20, i32 %21)
  %23 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %4, align 8
  %24 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %4, align 8
  %26 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %1
  %34 = load i32, i32* @omap4_prcm_reset, align 4
  store i32 %34, i32* @ti_cpu_reset, align 4
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.omap4_prcm_softc* @device_get_softc(i32) #1

declare dso_local %struct.ofw_compat_data* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
