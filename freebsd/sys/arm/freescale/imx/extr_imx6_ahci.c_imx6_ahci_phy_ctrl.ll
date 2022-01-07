; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ahci.c_imx6_ahci_phy_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ahci.c_imx6_ahci_phy_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_controller = type { i32 }

@SATA_P0PHYCR = common dso_local global i32 0, align 4
@SATA_P0PHYSR = common dso_local global i32 0, align 4
@SATA_P0PHYSR_CR_ACK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahci_controller*, i32, i32)* @imx6_ahci_phy_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6_ahci_phy_ctrl(%struct.ahci_controller* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ahci_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ahci_controller* %0, %struct.ahci_controller** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %12 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SATA_P0PHYCR, align 4
  %15 = call i32 @ATA_INL(i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %8, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %8, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %29 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SATA_P0PHYCR, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @ATA_OUTL(i32 %30, i32 %31, i32 %32)
  store i32 5000, i32* %9, align 4
  br label %34

34:                                               ; preds = %55, %27
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %34
  %38 = load %struct.ahci_controller*, %struct.ahci_controller** %5, align 8
  %39 = getelementptr inbounds %struct.ahci_controller, %struct.ahci_controller* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SATA_P0PHYSR, align 4
  %42 = call i32 @ATA_INL(i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SATA_P0PHYSR_CR_ACK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @SATA_P0PHYSR_CR_ACK, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %58

53:                                               ; preds = %37
  %54 = call i32 @DELAY(i32 100)
  br label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %9, align 4
  br label %34

58:                                               ; preds = %52, %34
  %59 = load i32, i32* %9, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %61
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
