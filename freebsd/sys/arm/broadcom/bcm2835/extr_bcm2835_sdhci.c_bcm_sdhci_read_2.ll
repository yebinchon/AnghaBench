; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhci.c_bcm_sdhci_read_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_sdhci.c_bcm_sdhci_read_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32 }
%struct.bcm_sdhci_softc = type { i32, i32, i64 }

@SDHCI_BLOCK_SIZE = common dso_local global i32 0, align 4
@SDHCI_BLOCK_COUNT = common dso_local global i32 0, align 4
@SDHCI_TRANSFER_MODE = common dso_local global i32 0, align 4
@SDHCI_COMMAND_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sdhci_slot*, i32)* @bcm_sdhci_read_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sdhci_read_2(i32 %0, %struct.sdhci_slot* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcm_sdhci_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sdhci_slot* %1, %struct.sdhci_slot** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.bcm_sdhci_softc* @device_get_softc(i32 %9)
  store %struct.bcm_sdhci_softc* %10, %struct.bcm_sdhci_softc** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @SDHCI_BLOCK_SIZE, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @SDHCI_BLOCK_COUNT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14, %3
  %19 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %7, align 8
  %20 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %7, align 8
  %25 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  br label %45

27:                                               ; preds = %18, %14
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @SDHCI_COMMAND_FLAGS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31, %27
  %36 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %7, align 8
  %37 = getelementptr inbounds %struct.bcm_sdhci_softc, %struct.bcm_sdhci_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  br label %44

39:                                               ; preds = %31
  %40 = load %struct.bcm_sdhci_softc*, %struct.bcm_sdhci_softc** %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, -4
  %43 = call i32 @RD4(%struct.bcm_sdhci_softc* %40, i32 %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %39, %35
  br label %45

45:                                               ; preds = %44, %23
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 3
  %49 = mul nsw i32 %48, 8
  %50 = ashr i32 %46, %49
  %51 = and i32 %50, 65535
  ret i32 %51
}

declare dso_local %struct.bcm_sdhci_softc* @device_get_softc(i32) #1

declare dso_local i32 @RD4(%struct.bcm_sdhci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
