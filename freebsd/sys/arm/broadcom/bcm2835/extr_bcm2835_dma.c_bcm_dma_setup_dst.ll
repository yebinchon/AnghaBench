; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_dma.c_bcm_dma_setup_dst.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_dma.c_bcm_dma_setup_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_dma_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@bcm_dma_sc = common dso_local global %struct.bcm_dma_softc* null, align 8
@BCM_DMA_CH_MAX = common dso_local global i32 0, align 4
@BCM_DMA_CH_USED = common dso_local global i32 0, align 4
@INFO_PERMAP_MASK = common dso_local global i32 0, align 4
@INFO_PERMAP_SHIFT = common dso_local global i32 0, align 4
@INFO_D_DREQ = common dso_local global i32 0, align 4
@BCM_DMA_128BIT = common dso_local global i32 0, align 4
@INFO_D_WIDTH = common dso_local global i32 0, align 4
@BCM_DMA_INC_ADDR = common dso_local global i32 0, align 4
@INFO_D_INC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm_dma_setup_dst(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcm_dma_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** @bcm_dma_sc, align 8
  store %struct.bcm_dma_softc* %12, %struct.bcm_dma_softc** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @BCM_DMA_CH_MAX, align 4
  %18 = icmp sge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %4
  store i32 -1, i32* %5, align 4
  br label %103

20:                                               ; preds = %15
  %21 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %10, align 8
  %22 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BCM_DMA_CH_USED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %103

33:                                               ; preds = %20
  %34 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %10, align 8
  %35 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* @INFO_PERMAP_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %11, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @INFO_PERMAP_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* @INFO_PERMAP_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %33
  %58 = load i32, i32* @INFO_D_DREQ, align 4
  %59 = load i32, i32* %11, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %11, align 4
  br label %66

61:                                               ; preds = %33
  %62 = load i32, i32* @INFO_D_DREQ, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %61, %57
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @BCM_DMA_128BIT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* @INFO_D_WIDTH, align 4
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %79

74:                                               ; preds = %66
  %75 = load i32, i32* @INFO_D_WIDTH, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %11, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %74, %70
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @BCM_DMA_INC_ADDR, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* @INFO_D_INC, align 4
  %85 = load i32, i32* %11, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %92

87:                                               ; preds = %79
  %88 = load i32, i32* @INFO_D_INC, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %11, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %87, %83
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %10, align 8
  %95 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store i32 %93, i32* %102, align 4
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %92, %32, %19
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
