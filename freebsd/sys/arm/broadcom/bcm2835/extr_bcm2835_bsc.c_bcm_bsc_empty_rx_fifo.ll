; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_bsc.c_bcm_bsc_empty_rx_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_bsc.c_bcm_bsc_empty_rx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_bsc_softc = type { i64, i64, i64, i8**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i8** }

@BCM_BSC_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0x%02x \00", align 1
@BCM_BSC_STATUS = common dso_local global i32 0, align 4
@BCM_BSC_STATUS_RXD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_bsc_softc*)* @bcm_bsc_empty_rx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_bsc_empty_rx_fifo(%struct.bcm_bsc_softc* %0) #0 {
  %2 = alloca %struct.bcm_bsc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bcm_bsc_softc* %0, %struct.bcm_bsc_softc** %2, align 8
  br label %4

4:                                                ; preds = %86, %1
  %5 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %4
  %10 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i8**, i8*** %13, align 8
  %15 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %16 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %15, i32 0, i32 3
  store i8** %14, i8*** %16, align 8
  %17 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %18 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %23 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %22, i32 0, i32 2
  store i64 %21, i64* %23, align 8
  %24 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %25 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %28 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %30 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %29, i32 0, i32 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 1
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %30, align 8
  br label %33

33:                                               ; preds = %9, %4
  br label %34

34:                                               ; preds = %73, %33
  %35 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %36 = load i32, i32* @BCM_BSC_DATA, align 4
  %37 = call i8* @BCM_BSC_READ(%struct.bcm_bsc_softc* %35, i32 %36)
  %38 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %39 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %38, i32 0, i32 3
  %40 = load i8**, i8*** %39, align 8
  store i8* %37, i8** %40, align 8
  %41 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %42 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %43 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %42, i32 0, i32 3
  %44 = load i8**, i8*** %43, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @DEBUGF(%struct.bcm_bsc_softc* %41, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %48 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %47, i32 0, i32 3
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %48, align 8
  %51 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %52 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %56 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, i64* %56, align 8
  %59 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %60 = load i32, i32* @BCM_BSC_STATUS, align 4
  %61 = call i8* @BCM_BSC_READ(%struct.bcm_bsc_softc* %59, i32 %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %34
  %64 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %65 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @BCM_BSC_STATUS_RXD, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br label %73

73:                                               ; preds = %68, %63
  %74 = phi i1 [ false, %63 ], [ %72, %68 ]
  br i1 %74, label %34, label %75

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %78 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @BCM_BSC_STATUS_RXD, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br label %86

86:                                               ; preds = %81, %76
  %87 = phi i1 [ false, %76 ], [ %85, %81 ]
  br i1 %87, label %4, label %88

88:                                               ; preds = %86
  ret void
}

declare dso_local i8* @BCM_BSC_READ(%struct.bcm_bsc_softc*, i32) #1

declare dso_local i32 @DEBUGF(%struct.bcm_bsc_softc*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
