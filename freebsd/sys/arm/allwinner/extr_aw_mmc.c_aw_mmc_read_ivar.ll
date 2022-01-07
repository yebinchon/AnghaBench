; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_mmc.c_aw_mmc_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_mmc_softc = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AW_MMC_DMA_SEGS = common dso_local global i32 0, align 4
@MMC_SECTOR_SIZE = common dso_local global i32 0, align 4
@retune_req_none = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @aw_mmc_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_mmc_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.aw_mmc_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.aw_mmc_softc* @device_get_softc(i32 %11)
  store %struct.aw_mmc_softc* %12, %struct.aw_mmc_softc** %10, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %14 [
    i32 143, label %16
    i32 142, label %24
    i32 140, label %32
    i32 139, label %40
    i32 137, label %48
    i32 138, label %55
    i32 136, label %62
    i32 134, label %69
    i32 133, label %76
    i32 132, label %83
    i32 128, label %91
    i32 129, label %99
    i32 141, label %107
    i32 130, label %114
    i32 135, label %122
    i32 131, label %134
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %5, align 4
  br label %139

16:                                               ; preds = %4
  %17 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %18 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i64*, i64** %9, align 8
  %23 = bitcast i64* %22 to i32*
  store i32 %21, i32* %23, align 4
  br label %138

24:                                               ; preds = %4
  %25 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %26 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i64*, i64** %9, align 8
  %31 = bitcast i64* %30 to i32*
  store i32 %29, i32* %31, align 4
  br label %138

32:                                               ; preds = %4
  %33 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %34 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i64*, i64** %9, align 8
  %39 = bitcast i64* %38 to i32*
  store i32 %37, i32* %39, align 4
  br label %138

40:                                               ; preds = %4
  %41 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %42 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i64*, i64** %9, align 8
  %47 = bitcast i64* %46 to i32*
  store i32 %45, i32* %47, align 4
  br label %138

48:                                               ; preds = %4
  %49 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %50 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = bitcast i64* %53 to i32*
  store i32 %52, i32* %54, align 4
  br label %138

55:                                               ; preds = %4
  %56 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %57 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i64*, i64** %9, align 8
  %61 = bitcast i64* %60 to i32*
  store i32 %59, i32* %61, align 4
  br label %138

62:                                               ; preds = %4
  %63 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %64 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i64*, i64** %9, align 8
  %68 = bitcast i64* %67 to i32*
  store i32 %66, i32* %68, align 4
  br label %138

69:                                               ; preds = %4
  %70 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %71 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i64*, i64** %9, align 8
  %75 = bitcast i64* %74 to i32*
  store i32 %73, i32* %75, align 4
  br label %138

76:                                               ; preds = %4
  %77 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %78 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i64*, i64** %9, align 8
  %82 = bitcast i64* %81 to i32*
  store i32 %80, i32* %82, align 4
  br label %138

83:                                               ; preds = %4
  %84 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %85 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load i64*, i64** %9, align 8
  %90 = bitcast i64* %89 to i32*
  store i32 %88, i32* %90, align 4
  br label %138

91:                                               ; preds = %4
  %92 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %93 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 6
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load i64*, i64** %9, align 8
  %98 = bitcast i64* %97 to i32*
  store i32 %96, i32* %98, align 4
  br label %138

99:                                               ; preds = %4
  %100 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %101 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load i64*, i64** %9, align 8
  %106 = bitcast i64* %105 to i32*
  store i32 %104, i32* %106, align 4
  br label %138

107:                                              ; preds = %4
  %108 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %109 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load i64*, i64** %9, align 8
  %113 = bitcast i64* %112 to i32*
  store i32 %111, i32* %113, align 4
  br label %138

114:                                              ; preds = %4
  %115 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %116 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 4
  %120 = load i64*, i64** %9, align 8
  %121 = bitcast i64* %120 to i32*
  store i32 %119, i32* %121, align 4
  br label %138

122:                                              ; preds = %4
  %123 = load %struct.aw_mmc_softc*, %struct.aw_mmc_softc** %10, align 8
  %124 = getelementptr inbounds %struct.aw_mmc_softc, %struct.aw_mmc_softc* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @AW_MMC_DMA_SEGS, align 4
  %129 = mul nsw i32 %127, %128
  %130 = load i32, i32* @MMC_SECTOR_SIZE, align 4
  %131 = sdiv i32 %129, %130
  %132 = load i64*, i64** %9, align 8
  %133 = bitcast i64* %132 to i32*
  store i32 %131, i32* %133, align 4
  br label %138

134:                                              ; preds = %4
  %135 = load i32, i32* @retune_req_none, align 4
  %136 = load i64*, i64** %9, align 8
  %137 = bitcast i64* %136 to i32*
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %134, %122, %114, %107, %99, %91, %83, %76, %69, %62, %55, %48, %40, %32, %24, %16
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %138, %14
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local %struct.aw_mmc_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
