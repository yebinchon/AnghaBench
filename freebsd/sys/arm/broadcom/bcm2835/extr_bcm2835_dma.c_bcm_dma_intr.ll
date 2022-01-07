; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_dma.c_bcm_dma_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_dma.c_bcm_dma_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_dma_softc = type { i32, i32, i32 }
%struct.bcm_dma_ch = type { i32, i32, i32, i32 (i32, i32)*, i32 }

@bcm_dma_sc = common dso_local global %struct.bcm_dma_softc* null, align 8
@BCM_DMA_CH_USED = common dso_local global i32 0, align 4
@CS_INT = common dso_local global i32 0, align 4
@CS_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"DMA error %d on CH%d\0A\00", align 1
@DEBUG_ERROR_MASK = common dso_local global i32 0, align 4
@CS_END = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bcm_dma_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_dma_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bcm_dma_softc*, align 8
  %4 = alloca %struct.bcm_dma_ch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** @bcm_dma_sc, align 8
  store %struct.bcm_dma_softc* %7, %struct.bcm_dma_softc** %3, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.bcm_dma_ch*
  store %struct.bcm_dma_ch* %9, %struct.bcm_dma_ch** %4, align 8
  %10 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %3, align 8
  %11 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %4, align 8
  %14 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @BCM_DMA_CS(i32 %15)
  %17 = call i32 @bus_read_4(i32 %12, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %4, align 8
  %19 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BCM_DMA_CH_USED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %116

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @CS_INT, align 4
  %28 = load i32, i32* @CS_ERR, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %116

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @CS_ERR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %33
  %39 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %3, align 8
  %40 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %4, align 8
  %43 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @BCM_DMA_DEBUG(i32 %44)
  %46 = call i32 @bus_read_4(i32 %41, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %3, align 8
  %48 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @DEBUG_ERROR_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %4, align 8
  %54 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %3, align 8
  %58 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %4, align 8
  %61 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @BCM_DMA_DEBUG(i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @DEBUG_ERROR_MASK, align 4
  %66 = and i32 %64, %65
  %67 = call i32 @bus_write_4(i32 %59, i32 %63, i32 %66)
  %68 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %3, align 8
  %69 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %4, align 8
  %72 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @bcm_dma_reset(i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %38, %33
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @CS_INT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %116

80:                                               ; preds = %75
  %81 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %3, align 8
  %82 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %4, align 8
  %85 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @BCM_DMA_CS(i32 %86)
  %88 = load i32, i32* @CS_INT, align 4
  %89 = load i32, i32* @CS_END, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @bus_write_4(i32 %83, i32 %87, i32 %90)
  %92 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %3, align 8
  %93 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %4, align 8
  %96 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %99 = call i32 @bus_dmamap_sync(i32 %94, i32 %97, i32 %98)
  %100 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %4, align 8
  %101 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %100, i32 0, i32 3
  %102 = load i32 (i32, i32)*, i32 (i32, i32)** %101, align 8
  %103 = icmp ne i32 (i32, i32)* %102, null
  br i1 %103, label %104, label %115

104:                                              ; preds = %80
  %105 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %4, align 8
  %106 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %105, i32 0, i32 3
  %107 = load i32 (i32, i32)*, i32 (i32, i32)** %106, align 8
  %108 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %4, align 8
  %109 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %4, align 8
  %112 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 %107(i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %104, %80
  br label %116

116:                                              ; preds = %24, %32, %115, %75
  ret void
}

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @BCM_DMA_CS(i32) #1

declare dso_local i32 @BCM_DMA_DEBUG(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @bcm_dma_reset(i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
