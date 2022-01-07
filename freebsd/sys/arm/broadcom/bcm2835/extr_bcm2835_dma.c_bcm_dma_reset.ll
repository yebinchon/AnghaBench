; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_dma.c_bcm_dma_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_dma.c_bcm_dma_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_dma_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.bcm_dma_cb* }
%struct.bcm_dma_cb = type { i32 }

@BCM_DMA_CH_MAX = common dso_local global i32 0, align 4
@CS_ACTIVE = common dso_local global i32 0, align 4
@CS_ISPAUSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Can't abort DMA transfer at channel %d\0A\00", align 1
@CS_ABORT = common dso_local global i32 0, align 4
@CS_INT = common dso_local global i32 0, align 4
@CS_END = common dso_local global i32 0, align 4
@INFO_WAIT_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @bcm_dma_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_dma_reset(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_dma_softc*, align 8
  %6 = alloca %struct.bcm_dma_cb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.bcm_dma_softc* @device_get_softc(i32 %9)
  store %struct.bcm_dma_softc* %10, %struct.bcm_dma_softc** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @BCM_DMA_CH_MAX, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %2
  br label %109

18:                                               ; preds = %13
  %19 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %5, align 8
  %20 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @BCM_DMA_CS(i32 %22)
  %24 = call i32 @bus_read_4(i32 %21, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @CS_ACTIVE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %83

29:                                               ; preds = %18
  %30 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %5, align 8
  %31 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @BCM_DMA_CS(i32 %33)
  %35 = call i32 @bus_write_4(i32 %32, i32 %34, i32 0)
  store i32 1000, i32* %8, align 4
  br label %36

36:                                               ; preds = %52, %29
  %37 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %5, align 8
  %38 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @BCM_DMA_CS(i32 %40)
  %42 = call i32 @bus_read_4(i32 %39, i32 %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @CS_ISPAUSED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %8, align 4
  %51 = icmp sgt i32 %49, 0
  br label %52

52:                                               ; preds = %48, %43
  %53 = phi i1 [ false, %43 ], [ %51, %48 ]
  br i1 %53, label %36, label %54

54:                                               ; preds = %52
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @CS_ISPAUSED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %5, align 8
  %65 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @BCM_DMA_CBNEXT(i32 %67)
  %69 = call i32 @bus_write_4(i32 %66, i32 %68, i32 0)
  %70 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %5, align 8
  %71 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @BCM_DMA_CS(i32 %73)
  %75 = load i32, i32* @CS_ABORT, align 4
  %76 = load i32, i32* @CS_INT, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @CS_END, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @CS_ACTIVE, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @bus_write_4(i32 %72, i32 %74, i32 %81)
  br label %83

83:                                               ; preds = %63, %18
  %84 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %5, align 8
  %85 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @BCM_DMA_CBADDR(i32 %87)
  %89 = call i32 @bus_write_4(i32 %86, i32 %88, i32 0)
  %90 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %5, align 8
  %91 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @BCM_DMA_CBNEXT(i32 %93)
  %95 = call i32 @bus_write_4(i32 %92, i32 %94, i32 0)
  %96 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %5, align 8
  %97 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load %struct.bcm_dma_cb*, %struct.bcm_dma_cb** %102, align 8
  store %struct.bcm_dma_cb* %103, %struct.bcm_dma_cb** %6, align 8
  %104 = load %struct.bcm_dma_cb*, %struct.bcm_dma_cb** %6, align 8
  %105 = call i32 @bzero(%struct.bcm_dma_cb* %104, i32 4)
  %106 = load i32, i32* @INFO_WAIT_RESP, align 4
  %107 = load %struct.bcm_dma_cb*, %struct.bcm_dma_cb** %6, align 8
  %108 = getelementptr inbounds %struct.bcm_dma_cb, %struct.bcm_dma_cb* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %83, %17
  ret void
}

declare dso_local %struct.bcm_dma_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @BCM_DMA_CS(i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @BCM_DMA_CBNEXT(i32) #1

declare dso_local i32 @BCM_DMA_CBADDR(i32) #1

declare dso_local i32 @bzero(%struct.bcm_dma_cb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
