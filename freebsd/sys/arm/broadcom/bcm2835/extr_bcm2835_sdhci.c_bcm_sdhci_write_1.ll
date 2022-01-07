; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhci.c_bcm_sdhci_write_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhci.c_bcm_sdhci_write_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32 }
%struct.bcm_sdhci_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sdhci_slot*, i32, i32)* @bcm_sdhci_write_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sdhci_write_1(i32 %0, %struct.sdhci_slot* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sdhci_slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bcm_sdhci_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sdhci_slot* %1, %struct.sdhci_slot** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.bcm_sdhci_softc* @device_get_softc(i32 %11)
  store %struct.bcm_sdhci_softc* %12, %struct.bcm_sdhci_softc** %9, align 8
  %13 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, -4
  %16 = call i32 @RD4(%struct.bcm_sdhci_softc* %13, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 3
  %19 = mul nsw i32 %18, 8
  %20 = shl i32 255, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 3
  %27 = mul nsw i32 %26, 8
  %28 = shl i32 %24, %27
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %10, align 4
  %31 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %9, align 8
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, -4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @WR4(%struct.bcm_sdhci_softc* %31, i32 %33, i32 %34)
  ret void
}

declare dso_local %struct.bcm_sdhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @RD4(%struct.bcm_sdhci_softc*, i32) #1

declare dso_local i32 @WR4(%struct.bcm_sdhci_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
