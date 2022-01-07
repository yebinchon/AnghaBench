; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_clkman.c_bcm2835_clkman_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_clkman.c_bcm2835_clkman_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_clkman_softc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"only one clk manager supported\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot allocate memory window\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm2835_clkman_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_clkman_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm2835_clkman_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @device_get_unit(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_printf(i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %48

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.bcm2835_clkman_softc* @device_get_softc(i32 %14)
  store %struct.bcm2835_clkman_softc* %15, %struct.bcm2835_clkman_softc** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.bcm2835_clkman_softc*, %struct.bcm2835_clkman_softc** %4, align 8
  %18 = getelementptr inbounds %struct.bcm2835_clkman_softc, %struct.bcm2835_clkman_softc* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  store i32 0, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SYS_RES_MEMORY, align 4
  %21 = load i32, i32* @RF_ACTIVE, align 4
  %22 = call i32 @bus_alloc_resource_any(i32 %19, i32 %20, i32* %5, i32 %21)
  %23 = load %struct.bcm2835_clkman_softc*, %struct.bcm2835_clkman_softc** %4, align 8
  %24 = getelementptr inbounds %struct.bcm2835_clkman_softc, %struct.bcm2835_clkman_softc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.bcm2835_clkman_softc*, %struct.bcm2835_clkman_softc** %4, align 8
  %26 = getelementptr inbounds %struct.bcm2835_clkman_softc, %struct.bcm2835_clkman_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %13
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %48

33:                                               ; preds = %13
  %34 = load %struct.bcm2835_clkman_softc*, %struct.bcm2835_clkman_softc** %4, align 8
  %35 = getelementptr inbounds %struct.bcm2835_clkman_softc, %struct.bcm2835_clkman_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rman_get_bustag(i32 %36)
  %38 = load %struct.bcm2835_clkman_softc*, %struct.bcm2835_clkman_softc** %4, align 8
  %39 = getelementptr inbounds %struct.bcm2835_clkman_softc, %struct.bcm2835_clkman_softc* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.bcm2835_clkman_softc*, %struct.bcm2835_clkman_softc** %4, align 8
  %41 = getelementptr inbounds %struct.bcm2835_clkman_softc, %struct.bcm2835_clkman_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rman_get_bushandle(i32 %42)
  %44 = load %struct.bcm2835_clkman_softc*, %struct.bcm2835_clkman_softc** %4, align 8
  %45 = getelementptr inbounds %struct.bcm2835_clkman_softc, %struct.bcm2835_clkman_softc* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @bus_generic_attach(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %33, %29, %9
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.bcm2835_clkman_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
