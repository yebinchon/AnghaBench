; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdhci.c_ti_sdhci_read_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdhci.c_ti_sdhci_read_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32 }
%struct.ti_sdhci_softc = type { i64, i64 }

@SDHCI_CAPABILITIES = common dso_local global i32 0, align 4
@SDHCI_CAN_DO_HISPD = common dso_local global i32 0, align 4
@SDHCI_PRESENT_STATE = common dso_local global i32 0, align 4
@SDHCI_CARD_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sdhci_slot*, i32)* @ti_sdhci_read_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sdhci_read_4(i32 %0, %struct.sdhci_slot* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ti_sdhci_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sdhci_slot* %1, %struct.sdhci_slot** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.ti_sdhci_softc* @device_get_softc(i32 %9)
  store %struct.ti_sdhci_softc* %10, %struct.ti_sdhci_softc** %7, align 8
  %11 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @RD4(%struct.ti_sdhci_softc* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @SDHCI_CAPABILITIES, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %7, align 8
  %19 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i32, i32* @SDHCI_CAN_DO_HISPD, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %22, %17, %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @SDHCI_PRESENT_STATE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.ti_sdhci_softc*, %struct.ti_sdhci_softc** %7, align 8
  %33 = getelementptr inbounds %struct.ti_sdhci_softc, %struct.ti_sdhci_softc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @SDHCI_CARD_PRESENT, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %36, %31, %27
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local %struct.ti_sdhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @RD4(%struct.ti_sdhci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
