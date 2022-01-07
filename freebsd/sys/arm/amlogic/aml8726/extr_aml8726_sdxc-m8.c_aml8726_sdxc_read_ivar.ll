; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_sdxc_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@return_req_none = common dso_local global i32 0, align 4
@AML_SDXC_MAX_DMA = common dso_local global i32 0, align 4
@MMC_SECTOR_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @aml8726_sdxc_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_sdxc_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.aml8726_sdxc_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.aml8726_sdxc_softc* @device_get_softc(i32 %11)
  store %struct.aml8726_sdxc_softc* %12, %struct.aml8726_sdxc_softc** %10, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %132 [
    i32 144, label %14
    i32 143, label %22
    i32 141, label %30
    i32 140, label %38
    i32 138, label %46
    i32 139, label %53
    i32 137, label %60
    i32 134, label %67
    i32 133, label %74
    i32 132, label %81
    i32 131, label %89
    i32 128, label %93
    i32 129, label %101
    i32 142, label %108
    i32 130, label %115
    i32 135, label %123
    i32 136, label %129
  ]

14:                                               ; preds = %4
  %15 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %10, align 8
  %16 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = bitcast i64* %20 to i32*
  store i32 %19, i32* %21, align 4
  br label %134

22:                                               ; preds = %4
  %23 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %10, align 8
  %24 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64*, i64** %9, align 8
  %29 = bitcast i64* %28 to i32*
  store i32 %27, i32* %29, align 4
  br label %134

30:                                               ; preds = %4
  %31 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %10, align 8
  %32 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = bitcast i64* %36 to i32*
  store i32 %35, i32* %37, align 4
  br label %134

38:                                               ; preds = %4
  %39 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %10, align 8
  %40 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i64*, i64** %9, align 8
  %45 = bitcast i64* %44 to i32*
  store i32 %43, i32* %45, align 4
  br label %134

46:                                               ; preds = %4
  %47 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %10, align 8
  %48 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i64*, i64** %9, align 8
  %52 = bitcast i64* %51 to i32*
  store i32 %50, i32* %52, align 4
  br label %134

53:                                               ; preds = %4
  %54 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %10, align 8
  %55 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i64*, i64** %9, align 8
  %59 = bitcast i64* %58 to i32*
  store i32 %57, i32* %59, align 4
  br label %134

60:                                               ; preds = %4
  %61 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %10, align 8
  %62 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i64*, i64** %9, align 8
  %66 = bitcast i64* %65 to i32*
  store i32 %64, i32* %66, align 4
  br label %134

67:                                               ; preds = %4
  %68 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %10, align 8
  %69 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i64*, i64** %9, align 8
  %73 = bitcast i64* %72 to i32*
  store i32 %71, i32* %73, align 4
  br label %134

74:                                               ; preds = %4
  %75 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %10, align 8
  %76 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i64*, i64** %9, align 8
  %80 = bitcast i64* %79 to i32*
  store i32 %78, i32* %80, align 4
  br label %134

81:                                               ; preds = %4
  %82 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %10, align 8
  %83 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i64*, i64** %9, align 8
  %88 = bitcast i64* %87 to i32*
  store i32 %86, i32* %88, align 4
  br label %134

89:                                               ; preds = %4
  %90 = load i32, i32* @return_req_none, align 4
  %91 = load i64*, i64** %9, align 8
  %92 = bitcast i64* %91 to i32*
  store i32 %90, i32* %92, align 4
  br label %134

93:                                               ; preds = %4
  %94 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %10, align 8
  %95 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load i64*, i64** %9, align 8
  %100 = bitcast i64* %99 to i32*
  store i32 %98, i32* %100, align 4
  br label %134

101:                                              ; preds = %4
  %102 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %10, align 8
  %103 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = load i64*, i64** %9, align 8
  store i64 %106, i64* %107, align 8
  br label %134

108:                                              ; preds = %4
  %109 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %10, align 8
  %110 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load i64*, i64** %9, align 8
  %114 = bitcast i64* %113 to i32*
  store i32 %112, i32* %114, align 4
  br label %134

115:                                              ; preds = %4
  %116 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %10, align 8
  %117 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = load i64*, i64** %9, align 8
  %122 = bitcast i64* %121 to i32*
  store i32 %120, i32* %122, align 4
  br label %134

123:                                              ; preds = %4
  %124 = load i32, i32* @AML_SDXC_MAX_DMA, align 4
  %125 = load i32, i32* @MMC_SECTOR_SIZE, align 4
  %126 = sdiv i32 %124, %125
  %127 = load i64*, i64** %9, align 8
  %128 = bitcast i64* %127 to i32*
  store i32 %126, i32* %128, align 4
  br label %134

129:                                              ; preds = %4
  %130 = load i64*, i64** %9, align 8
  %131 = bitcast i64* %130 to i32*
  store i32 1000000, i32* %131, align 4
  br label %134

132:                                              ; preds = %4
  %133 = load i32, i32* @EINVAL, align 4
  store i32 %133, i32* %5, align 4
  br label %135

134:                                              ; preds = %129, %123, %115, %108, %101, %93, %89, %81, %74, %67, %60, %53, %46, %38, %30, %22, %14
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %134, %132
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local %struct.aml8726_sdxc_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
