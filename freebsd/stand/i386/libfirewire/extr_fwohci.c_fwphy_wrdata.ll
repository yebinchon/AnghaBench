; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_fwohci.c_fwphy_wrdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_fwohci.c_fwphy_wrdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { i32 }

@PHYDEV_WRCMD = common dso_local global i32 0, align 4
@PHYDEV_REGADDR = common dso_local global i32 0, align 4
@PHYDEV_WRDATA = common dso_local global i32 0, align 4
@OHCI_PHYACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwohci_softc*, i32, i32)* @fwphy_wrdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwphy_wrdata(%struct.fwohci_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fwohci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 15
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 255
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @PHYDEV_WRCMD, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PHYDEV_REGADDR, align 4
  %15 = shl i32 %13, %14
  %16 = or i32 %12, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PHYDEV_WRDATA, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %22 = load i32, i32* @OHCI_PHYACCESS, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @OWRITE(%struct.fwohci_softc* %21, i32 %22, i32 %23)
  %25 = call i32 @DELAY(i32 100)
  %26 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @fwphy_rddata(%struct.fwohci_softc* %26, i32 %27)
  ret i32 %28
}

declare dso_local i32 @OWRITE(%struct.fwohci_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @fwphy_rddata(%struct.fwohci_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
