; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhost.c_bcm_sdhost_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhost.c_bcm_sdhost_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32 }
%struct.bcm_sdhost_softc = type { i32 }

@HC_POWER = common dso_local global i32 0, align 4
@HC_COMMAND = common dso_local global i32 0, align 4
@HC_ARGUMENT = common dso_local global i32 0, align 4
@HC_TIMEOUTCOUNTER = common dso_local global i32 0, align 4
@HC_TIMEOUT_DEFAULT = common dso_local global i32 0, align 4
@HC_CLOCKDIVISOR = common dso_local global i32 0, align 4
@HC_HOSTSTATUS = common dso_local global i32 0, align 4
@HC_HSTST_RESET = common dso_local global i32 0, align 4
@HC_HOSTCONFIG = common dso_local global i32 0, align 4
@HC_BLOCKSIZE = common dso_local global i32 0, align 4
@HC_BLOCKCOUNT = common dso_local global i32 0, align 4
@HC_DEBUG = common dso_local global i32 0, align 4
@HC_DBG_FIFO_THRESH_MASK = common dso_local global i32 0, align 4
@HC_DBG_FIFO_THRESH_READ_SHIFT = common dso_local global i32 0, align 4
@HC_DBG_FIFO_THRESH_WRITE_SHIFT = common dso_local global i32 0, align 4
@HC_FIFO_THRESH_READ = common dso_local global i32 0, align 4
@HC_FIFO_THRESH_WRITE = common dso_local global i32 0, align 4
@SDHCI_CARD_PRESENT = common dso_local global i32 0, align 4
@SDHCI_CARD_STABLE = common dso_local global i32 0, align 4
@SDHCI_WRITE_PROTECT = common dso_local global i32 0, align 4
@HC_CLOCKDIVISOR_MAXVAL = common dso_local global i32 0, align 4
@HC_HSTCF_INT_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sdhci_slot*)* @bcm_sdhost_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sdhost_reset(i32 %0, %struct.sdhci_slot* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdhci_slot*, align 8
  %5 = alloca %struct.bcm_sdhost_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.sdhci_slot* %1, %struct.sdhci_slot** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.bcm_sdhost_softc* @device_get_softc(i32 %7)
  store %struct.bcm_sdhost_softc* %8, %struct.bcm_sdhost_softc** %5, align 8
  %9 = load %struct.bcm_sdhost_softc*, %struct.bcm_sdhost_softc** %5, align 8
  %10 = load i32, i32* @HC_POWER, align 4
  %11 = call i32 @WR4(%struct.bcm_sdhost_softc* %9, i32 %10, i32 0)
  %12 = load %struct.bcm_sdhost_softc*, %struct.bcm_sdhost_softc** %5, align 8
  %13 = load i32, i32* @HC_COMMAND, align 4
  %14 = call i32 @WR4(%struct.bcm_sdhost_softc* %12, i32 %13, i32 0)
  %15 = load %struct.bcm_sdhost_softc*, %struct.bcm_sdhost_softc** %5, align 8
  %16 = load i32, i32* @HC_ARGUMENT, align 4
  %17 = call i32 @WR4(%struct.bcm_sdhost_softc* %15, i32 %16, i32 0)
  %18 = load %struct.bcm_sdhost_softc*, %struct.bcm_sdhost_softc** %5, align 8
  %19 = load i32, i32* @HC_TIMEOUTCOUNTER, align 4
  %20 = load i32, i32* @HC_TIMEOUT_DEFAULT, align 4
  %21 = call i32 @WR4(%struct.bcm_sdhost_softc* %18, i32 %19, i32 %20)
  %22 = load %struct.bcm_sdhost_softc*, %struct.bcm_sdhost_softc** %5, align 8
  %23 = load i32, i32* @HC_CLOCKDIVISOR, align 4
  %24 = call i32 @WR4(%struct.bcm_sdhost_softc* %22, i32 %23, i32 0)
  %25 = load %struct.bcm_sdhost_softc*, %struct.bcm_sdhost_softc** %5, align 8
  %26 = load i32, i32* @HC_HOSTSTATUS, align 4
  %27 = load i32, i32* @HC_HSTST_RESET, align 4
  %28 = call i32 @WR4(%struct.bcm_sdhost_softc* %25, i32 %26, i32 %27)
  %29 = load %struct.bcm_sdhost_softc*, %struct.bcm_sdhost_softc** %5, align 8
  %30 = load i32, i32* @HC_HOSTCONFIG, align 4
  %31 = call i32 @WR4(%struct.bcm_sdhost_softc* %29, i32 %30, i32 0)
  %32 = load %struct.bcm_sdhost_softc*, %struct.bcm_sdhost_softc** %5, align 8
  %33 = load i32, i32* @HC_BLOCKSIZE, align 4
  %34 = call i32 @WR4(%struct.bcm_sdhost_softc* %32, i32 %33, i32 0)
  %35 = load %struct.bcm_sdhost_softc*, %struct.bcm_sdhost_softc** %5, align 8
  %36 = load i32, i32* @HC_BLOCKCOUNT, align 4
  %37 = call i32 @WR4(%struct.bcm_sdhost_softc* %35, i32 %36, i32 0)
  %38 = load %struct.bcm_sdhost_softc*, %struct.bcm_sdhost_softc** %5, align 8
  %39 = load i32, i32* @HC_DEBUG, align 4
  %40 = call i32 @RD4(%struct.bcm_sdhost_softc* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @HC_DBG_FIFO_THRESH_MASK, align 4
  %42 = load i32, i32* @HC_DBG_FIFO_THRESH_READ_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* @HC_DBG_FIFO_THRESH_MASK, align 4
  %45 = load i32, i32* @HC_DBG_FIFO_THRESH_WRITE_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %43, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @HC_FIFO_THRESH_READ, align 4
  %52 = load i32, i32* @HC_DBG_FIFO_THRESH_READ_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* @HC_FIFO_THRESH_WRITE, align 4
  %55 = load i32, i32* @HC_DBG_FIFO_THRESH_WRITE_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = or i32 %53, %56
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load %struct.bcm_sdhost_softc*, %struct.bcm_sdhost_softc** %5, align 8
  %61 = load i32, i32* @HC_DEBUG, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @WR4(%struct.bcm_sdhost_softc* %60, i32 %61, i32 %62)
  %64 = call i32 @DELAY(i32 250000)
  %65 = load %struct.bcm_sdhost_softc*, %struct.bcm_sdhost_softc** %5, align 8
  %66 = load i32, i32* @HC_POWER, align 4
  %67 = call i32 @WR4(%struct.bcm_sdhost_softc* %65, i32 %66, i32 1)
  %68 = call i32 @DELAY(i32 250000)
  %69 = load i32, i32* @SDHCI_CARD_PRESENT, align 4
  %70 = load i32, i32* @SDHCI_CARD_STABLE, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @SDHCI_WRITE_PROTECT, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.bcm_sdhost_softc*, %struct.bcm_sdhost_softc** %5, align 8
  %75 = getelementptr inbounds %struct.bcm_sdhost_softc, %struct.bcm_sdhost_softc* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.bcm_sdhost_softc*, %struct.bcm_sdhost_softc** %5, align 8
  %77 = load i32, i32* @HC_CLOCKDIVISOR, align 4
  %78 = load i32, i32* @HC_CLOCKDIVISOR_MAXVAL, align 4
  %79 = call i32 @WR4(%struct.bcm_sdhost_softc* %76, i32 %77, i32 %78)
  %80 = load %struct.bcm_sdhost_softc*, %struct.bcm_sdhost_softc** %5, align 8
  %81 = load i32, i32* @HC_HOSTCONFIG, align 4
  %82 = load i32, i32* @HC_HSTCF_INT_BUSY, align 4
  %83 = call i32 @WR4(%struct.bcm_sdhost_softc* %80, i32 %81, i32 %82)
  ret void
}

declare dso_local %struct.bcm_sdhost_softc* @device_get_softc(i32) #1

declare dso_local i32 @WR4(%struct.bcm_sdhost_softc*, i32, i32) #1

declare dso_local i32 @RD4(%struct.bcm_sdhost_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
