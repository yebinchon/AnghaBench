; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_bsc.c_bcm_bsc_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_bsc.c_bcm_bsc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_bsc_softc = type { i32, i64 }

@BCM_I2C_BUSY = common dso_local global i32 0, align 4
@BCM_BSC_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c" <intrstatus=0x%08x> \00", align 1
@BCM_I2C_READ = common dso_local global i32 0, align 4
@BCM_BSC_STATUS_RXD = common dso_local global i32 0, align 4
@BCM_BSC_STATUS_ERRBITS = common dso_local global i32 0, align 4
@BCM_BSC_STATUS_DONE = common dso_local global i32 0, align 4
@BCM_I2C_DONE = common dso_local global i32 0, align 4
@BCM_I2C_ERROR = common dso_local global i32 0, align 4
@BCM_BSC_STATUS_TXD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bcm_bsc_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_bsc_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bcm_bsc_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.bcm_bsc_softc*
  store %struct.bcm_bsc_softc* %6, %struct.bcm_bsc_softc** %3, align 8
  %7 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %8 = call i32 @BCM_BSC_LOCK(%struct.bcm_bsc_softc* %7)
  %9 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %10 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BCM_I2C_BUSY, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %17 = call i32 @BCM_BSC_UNLOCK(%struct.bcm_bsc_softc* %16)
  br label %92

18:                                               ; preds = %1
  %19 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %20 = load i32, i32* @BCM_BSC_STATUS, align 4
  %21 = call i32 @BCM_BSC_READ(%struct.bcm_bsc_softc* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @DEBUGF(%struct.bcm_bsc_softc* %22, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %26 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BCM_I2C_READ, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %18
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @BCM_BSC_STATUS_RXD, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %38 = call i32 @bcm_bsc_empty_rx_fifo(%struct.bcm_bsc_softc* %37)
  br label %39

39:                                               ; preds = %36, %31, %18
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @BCM_BSC_STATUS_ERRBITS, align 4
  %42 = load i32, i32* @BCM_BSC_STATUS_DONE, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %39
  %47 = load i32, i32* @BCM_I2C_DONE, align 4
  %48 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %49 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @BCM_BSC_STATUS_ERRBITS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %46
  %57 = load i32, i32* @BCM_I2C_ERROR, align 4
  %58 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %59 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %46
  %63 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %64 = call i32 @bcm_bsc_reset(%struct.bcm_bsc_softc* %63)
  %65 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %66 = call i32 @wakeup(%struct.bcm_bsc_softc* %65)
  br label %89

67:                                               ; preds = %39
  %68 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %69 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @BCM_I2C_READ, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @BCM_BSC_STATUS_TXD, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %81 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %86 = call i32 @bcm_bsc_fill_tx_fifo(%struct.bcm_bsc_softc* %85)
  br label %87

87:                                               ; preds = %84, %79, %74
  br label %88

88:                                               ; preds = %87, %67
  br label %89

89:                                               ; preds = %88, %62
  %90 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %3, align 8
  %91 = call i32 @BCM_BSC_UNLOCK(%struct.bcm_bsc_softc* %90)
  br label %92

92:                                               ; preds = %89, %15
  ret void
}

declare dso_local i32 @BCM_BSC_LOCK(%struct.bcm_bsc_softc*) #1

declare dso_local i32 @BCM_BSC_UNLOCK(%struct.bcm_bsc_softc*) #1

declare dso_local i32 @BCM_BSC_READ(%struct.bcm_bsc_softc*, i32) #1

declare dso_local i32 @DEBUGF(%struct.bcm_bsc_softc*, i32, i8*, i32) #1

declare dso_local i32 @bcm_bsc_empty_rx_fifo(%struct.bcm_bsc_softc*) #1

declare dso_local i32 @bcm_bsc_reset(%struct.bcm_bsc_softc*) #1

declare dso_local i32 @wakeup(%struct.bcm_bsc_softc*) #1

declare dso_local i32 @bcm_bsc_fill_tx_fifo(%struct.bcm_bsc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
