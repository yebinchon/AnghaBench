; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_fwohci.c_fwohci_sid.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_fwohci.c_fwohci_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fwohci_softc = type { i32, i32 }

@FWOHCI_NODEID = common dso_local global i32 0, align 4
@OHCI_NODE_VALID = common dso_local global i32 0, align 4
@FWOHCI_INTMASK = common dso_local global i32 0, align 4
@OHCI_INT_PHY_BUS_R = common dso_local global i32 0, align 4
@OHCI_AREQHI = common dso_local global i32 0, align 4
@OHCI_PREQHI = common dso_local global i32 0, align 4
@OHCI_PREQLO = common dso_local global i32 0, align 4
@OHCI_PREQUPPER = common dso_local global i32 0, align 4
@OHCI_ATRETRY = common dso_local global i32 0, align 4
@OHCI_SID_CNT = common dso_local global i32 0, align 4
@fc = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"node_id=0x%08x, gen=%d, \00", align 1
@OHCI_NODE_ROOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"CYCLEMASTER mode\0A\00", align 1
@OHCI_LNKCTL = common dso_local global i32 0, align 4
@OHCI_CNTL_CYCMTR = common dso_local global i32 0, align 4
@OHCI_CNTL_CYCTIMER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"non CYCLEMASTER mode\0A\00", align 1
@OHCI_LNKCTLCLR = common dso_local global i32 0, align 4
@OHCI_SID_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"SID Error\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"bus reset phase done\0A\00", align 1
@FWOHCI_STATE_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fwohci_sid(%struct.fwohci_softc* %0) #0 {
  %2 = alloca %struct.fwohci_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %2, align 8
  %5 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %6 = load i32, i32* @FWOHCI_NODEID, align 4
  %7 = call i32 @OREAD(%struct.fwohci_softc* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @OHCI_NODE_VALID, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %90

13:                                               ; preds = %1
  %14 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %15 = load i32, i32* @FWOHCI_INTMASK, align 4
  %16 = load i32, i32* @OHCI_INT_PHY_BUS_R, align 4
  %17 = call i32 @OWRITE(%struct.fwohci_softc* %14, i32 %15, i32 %16)
  %18 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %19 = load i32, i32* @OHCI_AREQHI, align 4
  %20 = call i32 @OWRITE(%struct.fwohci_softc* %18, i32 %19, i32 -2147483648)
  %21 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %22 = load i32, i32* @OHCI_PREQHI, align 4
  %23 = call i32 @OWRITE(%struct.fwohci_softc* %21, i32 %22, i32 2147483647)
  %24 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %25 = load i32, i32* @OHCI_PREQLO, align 4
  %26 = call i32 @OWRITE(%struct.fwohci_softc* %24, i32 %25, i32 -1)
  %27 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %28 = load i32, i32* @OHCI_PREQUPPER, align 4
  %29 = call i32 @OWRITE(%struct.fwohci_softc* %27, i32 %28, i32 65536)
  %30 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %31 = load i32, i32* @OHCI_ATRETRY, align 4
  %32 = call i32 @OWRITE(%struct.fwohci_softc* %30, i32 %31, i32 536875007)
  %33 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %34 = load i32, i32* @OHCI_SID_CNT, align 4
  %35 = call i32 @OREAD(%struct.fwohci_softc* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fc, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = ashr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @OHCI_NODE_ROOT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %13
  %49 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %50 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @device_printf(i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %54 = load i32, i32* @OHCI_LNKCTL, align 4
  %55 = load i32, i32* @OHCI_CNTL_CYCMTR, align 4
  %56 = load i32, i32* @OHCI_CNTL_CYCTIMER, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @OWRITE(%struct.fwohci_softc* %53, i32 %54, i32 %57)
  br label %72

59:                                               ; preds = %13
  %60 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %61 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %65 = load i32, i32* @OHCI_LNKCTLCLR, align 4
  %66 = load i32, i32* @OHCI_CNTL_CYCMTR, align 4
  %67 = call i32 @OWRITE(%struct.fwohci_softc* %64, i32 %65, i32 %66)
  %68 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %69 = load i32, i32* @OHCI_LNKCTL, align 4
  %70 = load i32, i32* @OHCI_CNTL_CYCTIMER, align 4
  %71 = call i32 @OWRITE(%struct.fwohci_softc* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %59, %48
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @OHCI_SID_ERR, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fc, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i32, i8*, ...) @device_printf(i32 %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %90

82:                                               ; preds = %72
  %83 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %84 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, ...) @device_printf(i32 %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* @FWOHCI_STATE_NORMAL, align 4
  %88 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %89 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %82, %77, %12
  ret void
}

declare dso_local i32 @OREAD(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @OWRITE(%struct.fwohci_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
