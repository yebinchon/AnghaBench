; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_request = type { i32 (%struct.mmc_request*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.aml8726_sdxc_softc = type { i32* }

@EBUSY = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.mmc_request*)* @aml8726_sdxc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_sdxc_request(i32 %0, i32 %1, %struct.mmc_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_request*, align 8
  %8 = alloca %struct.aml8726_sdxc_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.mmc_request* %2, %struct.mmc_request** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.aml8726_sdxc_softc* @device_get_softc(i32 %10)
  store %struct.aml8726_sdxc_softc* %11, %struct.aml8726_sdxc_softc** %8, align 8
  %12 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %8, align 8
  %13 = call i32 @AML_SDXC_LOCK(%struct.aml8726_sdxc_softc* %12)
  %14 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %8, align 8
  %15 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %8, align 8
  %20 = call i32 @AML_SDXC_UNLOCK(%struct.aml8726_sdxc_softc* %19)
  %21 = load i32, i32* @EBUSY, align 4
  store i32 %21, i32* %4, align 4
  br label %45

22:                                               ; preds = %3
  %23 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %8, align 8
  %24 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %25 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = call i32 @aml8726_sdxc_start_command(%struct.aml8726_sdxc_softc* %23, %struct.TYPE_2__* %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %8, align 8
  %29 = call i32 @AML_SDXC_UNLOCK(%struct.aml8726_sdxc_softc* %28)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @MMC_ERR_NONE, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %22
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %36 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %40 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %39, i32 0, i32 0
  %41 = load i32 (%struct.mmc_request*)*, i32 (%struct.mmc_request*)** %40, align 8
  %42 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %43 = call i32 %41(%struct.mmc_request* %42)
  br label %44

44:                                               ; preds = %33, %22
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.aml8726_sdxc_softc* @device_get_softc(i32) #1

declare dso_local i32 @AML_SDXC_LOCK(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @AML_SDXC_UNLOCK(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @aml8726_sdxc_start_command(%struct.aml8726_sdxc_softc*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
