; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_rng.c_aml8726_rng_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_rng.c_aml8726_rng_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_rng_softc = type { i32, i32, i32, i32 }

@aml8726_rng_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"can not allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@aml8726_rng_harvest = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aml8726_rng_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_rng_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aml8726_rng_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.aml8726_rng_softc* @device_get_softc(i32 %5)
  store %struct.aml8726_rng_softc* %6, %struct.aml8726_rng_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.aml8726_rng_softc*, %struct.aml8726_rng_softc** %4, align 8
  %9 = getelementptr inbounds %struct.aml8726_rng_softc, %struct.aml8726_rng_softc* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @aml8726_rng_spec, align 4
  %12 = load %struct.aml8726_rng_softc*, %struct.aml8726_rng_softc** %4, align 8
  %13 = getelementptr inbounds %struct.aml8726_rng_softc, %struct.aml8726_rng_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @bus_alloc_resources(i32 %10, i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %1
  %22 = load i32, i32* @hz, align 4
  %23 = icmp sgt i32 %22, 100
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* @hz, align 4
  %26 = sdiv i32 %25, 100
  %27 = load %struct.aml8726_rng_softc*, %struct.aml8726_rng_softc** %4, align 8
  %28 = getelementptr inbounds %struct.aml8726_rng_softc, %struct.aml8726_rng_softc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %32

29:                                               ; preds = %21
  %30 = load %struct.aml8726_rng_softc*, %struct.aml8726_rng_softc** %4, align 8
  %31 = getelementptr inbounds %struct.aml8726_rng_softc, %struct.aml8726_rng_softc* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.aml8726_rng_softc*, %struct.aml8726_rng_softc** %4, align 8
  %34 = getelementptr inbounds %struct.aml8726_rng_softc, %struct.aml8726_rng_softc* %33, i32 0, i32 1
  %35 = call i32 @callout_init(i32* %34, i32 1)
  %36 = load %struct.aml8726_rng_softc*, %struct.aml8726_rng_softc** %4, align 8
  %37 = getelementptr inbounds %struct.aml8726_rng_softc, %struct.aml8726_rng_softc* %36, i32 0, i32 1
  %38 = load %struct.aml8726_rng_softc*, %struct.aml8726_rng_softc** %4, align 8
  %39 = getelementptr inbounds %struct.aml8726_rng_softc, %struct.aml8726_rng_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @aml8726_rng_harvest, align 4
  %42 = load %struct.aml8726_rng_softc*, %struct.aml8726_rng_softc** %4, align 8
  %43 = call i32 @callout_reset(i32* %37, i32 %40, i32 %41, %struct.aml8726_rng_softc* %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %32, %17
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.aml8726_rng_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.aml8726_rng_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
