; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_fwohci.c_fwphy_rddata.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_fwohci.c_fwphy_rddata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FWOHCI_INTSTATCLR = common dso_local global i32 0, align 4
@OHCI_INT_REG_FAIL = common dso_local global i32 0, align 4
@PHYDEV_RDCMD = common dso_local global i32 0, align 4
@PHYDEV_REGADDR = common dso_local global i32 0, align 4
@OHCI_PHYACCESS = common dso_local global i32 0, align 4
@PHYDEV_RDDONE = common dso_local global i32 0, align 4
@firewire_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"phy read failed(1).\0A\00", align 1
@FWOHCI_INTSTAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"phy read failed(2).\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"fwphy_rddata: 0x%x loop=%d, retry=%d\0A\00", align 1
@PHYDEV_RDDATA = common dso_local global i32 0, align 4
@MAX_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwohci_softc*, i32)* @fwphy_rddata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwphy_rddata(%struct.fwohci_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.fwohci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 15
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %94, %63, %2
  %12 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %13 = load i32, i32* @FWOHCI_INTSTATCLR, align 4
  %14 = load i32, i32* @OHCI_INT_REG_FAIL, align 4
  %15 = call i32 @OWRITE(%struct.fwohci_softc* %12, i32 %13, i32 %14)
  %16 = load i32, i32* @PHYDEV_RDCMD, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @PHYDEV_REGADDR, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %16, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %22 = load i32, i32* @OHCI_PHYACCESS, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @OWRITE(%struct.fwohci_softc* %21, i32 %22, i32 %23)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %44, %11
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 100
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %30 = load i32, i32* @OHCI_PHYACCESS, align 4
  %31 = call i32 @OREAD(%struct.fwohci_softc* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @PHYDEV_RDCMD, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PHYDEV_RDDONE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %47

42:                                               ; preds = %36, %28
  %43 = call i32 @DELAY(i32 100)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %25

47:                                               ; preds = %41, %25
  %48 = load i32, i32* %7, align 4
  %49 = icmp sge i32 %48, 100
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load i64, i64* @firewire_debug, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %55 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  %62 = icmp slt i32 %61, 100
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @DELAY(i32 100)
  br label %11

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %47
  %67 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %68 = load i32, i32* @FWOHCI_INTSTAT, align 4
  %69 = call i32 @OREAD(%struct.fwohci_softc* %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @OHCI_INT_REG_FAIL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @PHYDEV_REGADDR, align 4
  %77 = ashr i32 %75, %76
  %78 = and i32 %77, 15
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %74, %66
  %82 = load i64, i64* @firewire_debug, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %86 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, ...) @device_printf(i32 %88, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %84, %81
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  %93 = icmp slt i32 %92, 100
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = call i32 @DELAY(i32 100)
  br label %11

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %74
  %98 = load i64, i64* @firewire_debug, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = icmp sge i32 %101, 100
  br i1 %102, label %103, label %112

103:                                              ; preds = %100, %97
  %104 = load %struct.fwohci_softc*, %struct.fwohci_softc** %3, align 8
  %105 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (i32, i8*, ...) @device_printf(i32 %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %103, %100
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @PHYDEV_RDDATA, align 4
  %115 = ashr i32 %113, %114
  %116 = and i32 %115, 255
  ret i32 %116
}

declare dso_local i32 @OWRITE(%struct.fwohci_softc*, i32, i32) #1

declare dso_local i32 @OREAD(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
