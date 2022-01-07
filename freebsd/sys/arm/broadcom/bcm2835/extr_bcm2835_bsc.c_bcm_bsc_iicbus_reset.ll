; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_bsc.c_bcm_bsc_iicbus_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_bsc.c_bcm_bsc_iicbus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_bsc_softc = type { i32* }

@BCM_BSC_CLOCK = common dso_local global i32 0, align 4
@BCM_BSC_CORE_CLK = common dso_local global i32 0, align 4
@IIC_ENOADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @bcm_bsc_iicbus_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_bsc_iicbus_reset(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bcm_bsc_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.bcm_bsc_softc* @device_get_softc(i32 %11)
  store %struct.bcm_bsc_softc* %12, %struct.bcm_bsc_softc** %9, align 8
  %13 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %9, align 8
  %14 = call i32 @BCM_BSC_LOCK(%struct.bcm_bsc_softc* %13)
  %15 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %9, align 8
  %16 = call i32 @bcm_bsc_reset(%struct.bcm_bsc_softc* %15)
  %17 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %9, align 8
  %18 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 100000, i32* %10, align 4
  br label %28

22:                                               ; preds = %4
  %23 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %9, align 8
  %24 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @IICBUS_GET_FREQUENCY(i32* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %22, %21
  %29 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %9, align 8
  %30 = load i32, i32* @BCM_BSC_CLOCK, align 4
  %31 = load i32, i32* @BCM_BSC_CORE_CLK, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sdiv i32 %31, %32
  %34 = call i32 @BCM_BSC_WRITE(%struct.bcm_bsc_softc* %29, i32 %30, i32 %33)
  %35 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %9, align 8
  %36 = call i32 @BCM_BSC_UNLOCK(%struct.bcm_bsc_softc* %35)
  %37 = load i32, i32* @IIC_ENOADDR, align 4
  ret i32 %37
}

declare dso_local %struct.bcm_bsc_softc* @device_get_softc(i32) #1

declare dso_local i32 @BCM_BSC_LOCK(%struct.bcm_bsc_softc*) #1

declare dso_local i32 @bcm_bsc_reset(%struct.bcm_bsc_softc*) #1

declare dso_local i32 @IICBUS_GET_FREQUENCY(i32*, i32) #1

declare dso_local i32 @BCM_BSC_WRITE(%struct.bcm_bsc_softc*, i32, i32) #1

declare dso_local i32 @BCM_BSC_UNLOCK(%struct.bcm_bsc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
