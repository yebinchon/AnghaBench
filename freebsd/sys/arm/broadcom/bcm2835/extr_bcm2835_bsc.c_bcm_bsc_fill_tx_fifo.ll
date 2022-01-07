; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_bsc.c_bcm_bsc_fill_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_bsc.c_bcm_bsc_fill_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_bsc_softc = type { i64, i64, i64, i64, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64, i32, i32* }

@BCM_BSC_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0x%02x \00", align 1
@BCM_BSC_STATUS = common dso_local global i32 0, align 4
@BCM_BSC_STATUS_TXD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c" err=0\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"rstart 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"read   0x%02x len %d: \00", align 1
@BCM_I2C_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_bsc_softc*)* @bcm_bsc_fill_tx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_bsc_fill_tx_fifo(%struct.bcm_bsc_softc* %0) #0 {
  %2 = alloca %struct.bcm_bsc_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bcm_bsc_softc* %0, %struct.bcm_bsc_softc** %2, align 8
  br label %4

4:                                                ; preds = %136, %1
  %5 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %6 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %4
  %10 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %10, i32 0, i32 5
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %16 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %15, i32 0, i32 6
  store i32* %14, i32** %16, align 8
  %17 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %18 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %17, i32 0, i32 5
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
  %30 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %29, i32 0, i32 5
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 1
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %30, align 8
  br label %33

33:                                               ; preds = %9, %4
  br label %34

34:                                               ; preds = %73, %33
  %35 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %36 = load i32, i32* @BCM_BSC_DATA, align 4
  %37 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %38 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %37, i32 0, i32 6
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @BCM_BSC_WRITE(%struct.bcm_bsc_softc* %35, i32 %36, i32 %40)
  %42 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %43 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %44 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (%struct.bcm_bsc_softc*, i32, i8*, ...) @DEBUGF(%struct.bcm_bsc_softc* %42, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %49 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %48, i32 0, i32 6
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %49, align 8
  %52 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %53 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %53, align 8
  %56 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %57 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %61 = load i32, i32* @BCM_BSC_STATUS, align 4
  %62 = call i32 @BCM_BSC_READ(%struct.bcm_bsc_softc* %60, i32 %61)
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
  %70 = load i32, i32* @BCM_BSC_STATUS_TXD, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br label %73

73:                                               ; preds = %68, %63
  %74 = phi i1 [ false, %63 ], [ %72, %68 ]
  br i1 %74, label %34, label %75

75:                                               ; preds = %73
  %76 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %77 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %125

80:                                               ; preds = %75
  %81 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %82 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %125

85:                                               ; preds = %80
  %86 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %87 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %90 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %91, %88
  store i64 %92, i64* %90, align 8
  %93 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %94 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %124

97:                                               ; preds = %85
  %98 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %99 = call i32 (%struct.bcm_bsc_softc*, i32, i8*, ...) @DEBUGF(%struct.bcm_bsc_softc* %98, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %100 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %101 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %102 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %101, i32 0, i32 5
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, 1
  %107 = call i32 (%struct.bcm_bsc_softc*, i32, i8*, i32, ...) @DEVICE_DEBUGF(%struct.bcm_bsc_softc* %100, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %109 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %110 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %109, i32 0, i32 5
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, 1
  %115 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %116 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 (%struct.bcm_bsc_softc*, i32, i8*, i32, ...) @DEVICE_DEBUGF(%struct.bcm_bsc_softc* %108, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %114, i64 %117)
  %119 = load i32, i32* @BCM_I2C_READ, align 4
  %120 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %121 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %138

124:                                              ; preds = %85
  br label %125

125:                                              ; preds = %124, %80, %75
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %2, align 8
  %128 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* @BCM_BSC_STATUS_TXD, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br label %136

136:                                              ; preds = %131, %126
  %137 = phi i1 [ false, %126 ], [ %135, %131 ]
  br i1 %137, label %4, label %138

138:                                              ; preds = %97, %136
  ret void
}

declare dso_local i32 @BCM_BSC_WRITE(%struct.bcm_bsc_softc*, i32, i32) #1

declare dso_local i32 @DEBUGF(%struct.bcm_bsc_softc*, i32, i8*, ...) #1

declare dso_local i32 @BCM_BSC_READ(%struct.bcm_bsc_softc*, i32) #1

declare dso_local i32 @DEVICE_DEBUGF(%struct.bcm_bsc_softc*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
