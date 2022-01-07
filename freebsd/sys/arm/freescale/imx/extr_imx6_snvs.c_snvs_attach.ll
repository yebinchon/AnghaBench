; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_snvs.c_snvs_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_snvs.c_snvs_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snvs_softc = type { i32, i32* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@RTC_RESOLUTION_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @snvs_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snvs_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.snvs_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.snvs_softc* @device_get_softc(i32 %6)
  store %struct.snvs_softc* %7, %struct.snvs_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.snvs_softc*, %struct.snvs_softc** %4, align 8
  %10 = getelementptr inbounds %struct.snvs_softc, %struct.snvs_softc* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.snvs_softc*, %struct.snvs_softc** %4, align 8
  %12 = getelementptr inbounds %struct.snvs_softc, %struct.snvs_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SYS_RES_MEMORY, align 4
  %15 = load i32, i32* @RF_ACTIVE, align 4
  %16 = call i32* @bus_alloc_resource_any(i32 %13, i32 %14, i32* %5, i32 %15)
  %17 = load %struct.snvs_softc*, %struct.snvs_softc** %4, align 8
  %18 = getelementptr inbounds %struct.snvs_softc, %struct.snvs_softc* %17, i32 0, i32 1
  store i32* %16, i32** %18, align 8
  %19 = load %struct.snvs_softc*, %struct.snvs_softc** %4, align 8
  %20 = getelementptr inbounds %struct.snvs_softc, %struct.snvs_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.snvs_softc*, %struct.snvs_softc** %4, align 8
  %25 = getelementptr inbounds %struct.snvs_softc, %struct.snvs_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %1
  %30 = load %struct.snvs_softc*, %struct.snvs_softc** %4, align 8
  %31 = getelementptr inbounds %struct.snvs_softc, %struct.snvs_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @RTC_RESOLUTION_US, align 4
  %34 = call i32 @clock_register(i32 %32, i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.snvs_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clock_register(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
