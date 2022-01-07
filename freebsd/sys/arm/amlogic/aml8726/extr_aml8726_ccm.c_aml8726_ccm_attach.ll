; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_ccm.c_aml8726_ccm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_ccm.c_aml8726_ccm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_ccm_softc = type { i32, i32, i32 }

@aml8726_soc_hw_rev = common dso_local global i32 0, align 4
@aml8726_m3_ccm = common dso_local global i32 0, align 4
@aml8726_m6_ccm = common dso_local global i32 0, align 4
@aml8726_m8_ccm = common dso_local global i32 0, align 4
@aml8726_m8b_ccm = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unsupported SoC\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@aml8726_ccm_spec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"can not allocate resources for device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aml8726_ccm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_ccm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aml8726_ccm_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.aml8726_ccm_softc* @device_get_softc(i32 %5)
  store %struct.aml8726_ccm_softc* %6, %struct.aml8726_ccm_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.aml8726_ccm_softc*, %struct.aml8726_ccm_softc** %4, align 8
  %9 = getelementptr inbounds %struct.aml8726_ccm_softc, %struct.aml8726_ccm_softc* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @aml8726_soc_hw_rev, align 4
  switch i32 %10, label %27 [
    i32 131, label %11
    i32 130, label %15
    i32 129, label %19
    i32 128, label %23
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @aml8726_m3_ccm, align 4
  %13 = load %struct.aml8726_ccm_softc*, %struct.aml8726_ccm_softc** %4, align 8
  %14 = getelementptr inbounds %struct.aml8726_ccm_softc, %struct.aml8726_ccm_softc* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load i32, i32* @aml8726_m6_ccm, align 4
  %17 = load %struct.aml8726_ccm_softc*, %struct.aml8726_ccm_softc** %4, align 8
  %18 = getelementptr inbounds %struct.aml8726_ccm_softc, %struct.aml8726_ccm_softc* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %31

19:                                               ; preds = %1
  %20 = load i32, i32* @aml8726_m8_ccm, align 4
  %21 = load %struct.aml8726_ccm_softc*, %struct.aml8726_ccm_softc** %4, align 8
  %22 = getelementptr inbounds %struct.aml8726_ccm_softc, %struct.aml8726_ccm_softc* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load i32, i32* @aml8726_m8b_ccm, align 4
  %25 = load %struct.aml8726_ccm_softc*, %struct.aml8726_ccm_softc** %4, align 8
  %26 = getelementptr inbounds %struct.aml8726_ccm_softc, %struct.aml8726_ccm_softc* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %31

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %48

31:                                               ; preds = %23, %19, %15, %11
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @aml8726_ccm_spec, align 4
  %34 = load %struct.aml8726_ccm_softc*, %struct.aml8726_ccm_softc** %4, align 8
  %35 = getelementptr inbounds %struct.aml8726_ccm_softc, %struct.aml8726_ccm_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @bus_alloc_resources(i32 %32, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENXIO, align 4
  store i32 %42, i32* %2, align 4
  br label %48

43:                                               ; preds = %31
  %44 = load %struct.aml8726_ccm_softc*, %struct.aml8726_ccm_softc** %4, align 8
  %45 = call i32 @AML_CCM_LOCK_INIT(%struct.aml8726_ccm_softc* %44)
  %46 = load %struct.aml8726_ccm_softc*, %struct.aml8726_ccm_softc** %4, align 8
  %47 = call i32 @aml8726_ccm_configure_gates(%struct.aml8726_ccm_softc* %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %43, %39, %27
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.aml8726_ccm_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32) #1

declare dso_local i32 @AML_CCM_LOCK_INIT(%struct.aml8726_ccm_softc*) #1

declare dso_local i32 @aml8726_ccm_configure_gates(%struct.aml8726_ccm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
