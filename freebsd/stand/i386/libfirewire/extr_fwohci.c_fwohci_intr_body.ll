; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_fwohci.c_fwohci_intr_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_fwohci.c_fwohci_intr_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fwohci_softc = type { i64, i32* }

@OHCI_INT_PHY_BUS_R = common dso_local global i32 0, align 4
@fc = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"BUS reset\0A\00", align 1
@FWOHCI_STATE_BUSRESET = common dso_local global i64 0, align 8
@FWOHCI_INTMASKCLR = common dso_local global i32 0, align 4
@OHCI_INT_CYC_LOST = common dso_local global i32 0, align 4
@OHCI_LNKCTLCLR = common dso_local global i32 0, align 4
@OHCI_CNTL_CYCSRC = common dso_local global i32 0, align 4
@OHCI_CROMHDR = common dso_local global i32 0, align 4
@OHCI_BUS_OPT = common dso_local global i32 0, align 4
@FWOHCI_INTMASK = common dso_local global i32 0, align 4
@OHCI_INT_CYC_64SECOND = common dso_local global i32 0, align 4
@OHCI_INT_CYC_ERR = common dso_local global i32 0, align 4
@OHCI_INT_CYC_LONG = common dso_local global i32 0, align 4
@OHCI_INT_CYC_START = common dso_local global i32 0, align 4
@OHCI_INT_DMA_ARRQ = common dso_local global i32 0, align 4
@OHCI_INT_DMA_ARRS = common dso_local global i32 0, align 4
@OHCI_INT_DMA_ATRQ = common dso_local global i32 0, align 4
@OHCI_INT_DMA_ATRS = common dso_local global i32 0, align 4
@OHCI_INT_DMA_IR = common dso_local global i32 0, align 4
@OHCI_INT_DMA_IT = common dso_local global i32 0, align 4
@OHCI_INT_DMA_PRRQ = common dso_local global i32 0, align 4
@OHCI_INT_DMA_PRRS = common dso_local global i32 0, align 4
@OHCI_INT_EN = common dso_local global i32 0, align 4
@OHCI_INT_ERR = common dso_local global i32 0, align 4
@OHCI_INT_LR_ERR = common dso_local global i32 0, align 4
@OHCI_INT_PHY_INT = common dso_local global i32 0, align 4
@OHCI_INT_PHY_REG = common dso_local global i32 0, align 4
@OHCI_INT_PHY_SID = common dso_local global i32 0, align 4
@OHCI_INT_PW_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwohci_softc*, i32, i32)* @fwohci_intr_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fwohci_intr_body(%struct.fwohci_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fwohci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @OHCI_INT_PHY_BUS_R, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %56

11:                                               ; preds = %3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fc, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, ...) @device_printf(i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %17 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FWOHCI_STATE_BUSRESET, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %67

22:                                               ; preds = %11
  %23 = load i64, i64* @FWOHCI_STATE_BUSRESET, align 8
  %24 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %25 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %27 = load i32, i32* @FWOHCI_INTMASKCLR, align 4
  %28 = load i32, i32* @OHCI_INT_PHY_BUS_R, align 4
  %29 = call i32 @OWRITE(%struct.fwohci_softc* %26, i32 %27, i32 %28)
  %30 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %31 = load i32, i32* @FWOHCI_INTMASKCLR, align 4
  %32 = load i32, i32* @OHCI_INT_CYC_LOST, align 4
  %33 = call i32 @OWRITE(%struct.fwohci_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %35 = load i32, i32* @OHCI_LNKCTLCLR, align 4
  %36 = load i32, i32* @OHCI_CNTL_CYCSRC, align 4
  %37 = call i32 @OWRITE(%struct.fwohci_softc* %34, i32 %35, i32 %36)
  %38 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %39 = load i32, i32* @OHCI_CROMHDR, align 4
  %40 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %41 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ntohl(i32 %44)
  %46 = call i32 @OWRITE(%struct.fwohci_softc* %38, i32 %39, i32 %45)
  %47 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %48 = load i32, i32* @OHCI_BUS_OPT, align 4
  %49 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %50 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ntohl(i32 %53)
  %55 = call i32 @OWRITE(%struct.fwohci_softc* %47, i32 %48, i32 %54)
  br label %66

56:                                               ; preds = %3
  %57 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %58 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FWOHCI_STATE_BUSRESET, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.fwohci_softc*, %struct.fwohci_softc** %4, align 8
  %64 = call i32 @fwohci_sid(%struct.fwohci_softc* %63)
  br label %65

65:                                               ; preds = %62, %56
  br label %66

66:                                               ; preds = %65, %22
  br label %67

67:                                               ; preds = %66, %21
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @OWRITE(%struct.fwohci_softc*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @fwohci_sid(%struct.fwohci_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
