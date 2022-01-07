; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_sramc.c_a10_sramc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_sramc.c_a10_sramc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10_sramc_softc = type { i32, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not allocate resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@a10_sramc_sc = common dso_local global %struct.a10_sramc_softc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @a10_sramc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10_sramc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.a10_sramc_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.a10_sramc_softc* @device_get_softc(i32 %6)
  store %struct.a10_sramc_softc* %7, %struct.a10_sramc_softc** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SYS_RES_MEMORY, align 4
  %10 = load i32, i32* @RF_ACTIVE, align 4
  %11 = call i32 @bus_alloc_resource_any(i32 %8, i32 %9, i32* %5, i32 %10)
  %12 = load %struct.a10_sramc_softc*, %struct.a10_sramc_softc** %4, align 8
  %13 = getelementptr inbounds %struct.a10_sramc_softc, %struct.a10_sramc_softc* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.a10_sramc_softc*, %struct.a10_sramc_softc** %4, align 8
  %15 = getelementptr inbounds %struct.a10_sramc_softc, %struct.a10_sramc_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %36

22:                                               ; preds = %1
  %23 = load %struct.a10_sramc_softc*, %struct.a10_sramc_softc** %4, align 8
  %24 = getelementptr inbounds %struct.a10_sramc_softc, %struct.a10_sramc_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rman_get_bustag(i32 %25)
  %27 = load %struct.a10_sramc_softc*, %struct.a10_sramc_softc** %4, align 8
  %28 = getelementptr inbounds %struct.a10_sramc_softc, %struct.a10_sramc_softc* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.a10_sramc_softc*, %struct.a10_sramc_softc** %4, align 8
  %30 = getelementptr inbounds %struct.a10_sramc_softc, %struct.a10_sramc_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @rman_get_bushandle(i32 %31)
  %33 = load %struct.a10_sramc_softc*, %struct.a10_sramc_softc** %4, align 8
  %34 = getelementptr inbounds %struct.a10_sramc_softc, %struct.a10_sramc_softc* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.a10_sramc_softc*, %struct.a10_sramc_softc** %4, align 8
  store %struct.a10_sramc_softc* %35, %struct.a10_sramc_softc** @a10_sramc_sc, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %22, %18
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.a10_sramc_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
