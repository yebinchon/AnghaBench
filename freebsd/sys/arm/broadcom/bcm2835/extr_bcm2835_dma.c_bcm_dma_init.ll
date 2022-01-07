; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_dma.c_bcm_dma_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_dma.c_bcm_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_dma_softc = type { i32, i32, %struct.bcm_dma_ch* }
%struct.bcm_dma_ch = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@BCM_DMA_ENABLE = common dso_local global i32 0, align 4
@bcm_dma_channel_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"channels are not enabled\0A\00", align 1
@BCM_DMA_INT_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"statuses are not cleared\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed allocate DMA tag\0A\00", align 1
@BCM_DMA_CH_MAX = common dso_local global i32 0, align 4
@BCM_DMA_CH_UNMAP = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@BUS_DMA_ZERO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"cannot allocate DMA memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"DMA address is not 32-bytes aligned: %p\0A\00", align 1
@bcm_dmamap_cb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"cannot load DMA memory\0A\00", align 1
@BCM_DMA_CH_FREE = common dso_local global i32 0, align 4
@INFO_WAIT_RESP = common dso_local global i32 0, align 4
@CS_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_dma_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_dma_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm_dma_ch*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.bcm_dma_softc* @device_get_softc(i32 %11)
  store %struct.bcm_dma_softc* %12, %struct.bcm_dma_softc** %4, align 8
  %13 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %14 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @BCM_DMA_ENABLE, align 4
  %17 = call i32 @bus_read_4(i32 %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @bcm_dma_channel_mask, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @bcm_dma_channel_mask, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i32, i8*, ...) @device_printf(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %28 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BCM_DMA_INT_STATUS, align 4
  %31 = call i32 @bus_read_4(i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @bcm_dma_channel_mask, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* %3, align 4
  %38 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %26
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @bus_get_dma_tag(i32 %40)
  %42 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %43 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %44 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %45 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %46 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %45, i32 0, i32 1
  %47 = call i32 @bus_dma_tag_create(i32 %41, i32 1, i32 0, i32 %42, i32 %43, i32* null, i32* null, i32 4, i32 1, i32 4, i32 %44, i32* null, i32* null, i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (i32, i8*, ...) @device_printf(i32 %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %2, align 4
  br label %149

54:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %145, %54
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @BCM_DMA_CH_MAX, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %148

59:                                               ; preds = %55
  %60 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %61 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %60, i32 0, i32 2
  %62 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %62, i64 %64
  store %struct.bcm_dma_ch* %65, %struct.bcm_dma_ch** %6, align 8
  %66 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %6, align 8
  %67 = call i32 @bzero(%struct.bcm_dma_ch* %66, i32 32)
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %6, align 8
  %70 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @BCM_DMA_CH_UNMAP, align 4
  %72 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %6, align 8
  %73 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @bcm_dma_channel_mask, align 4
  %75 = load i32, i32* %10, align 4
  %76 = shl i32 1, %75
  %77 = and i32 %74, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %59
  br label %145

80:                                               ; preds = %59
  %81 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %82 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %85 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @BUS_DMA_ZERO, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %6, align 8
  %90 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %89, i32 0, i32 4
  %91 = call i32 @bus_dmamem_alloc(i32 %83, i8** %7, i32 %88, i32* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %80
  %95 = load i32, i32* %3, align 4
  %96 = call i32 (i32, i8*, ...) @device_printf(i32 %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %148

97:                                               ; preds = %80
  %98 = load i8*, i8** %7, align 8
  %99 = ptrtoint i8* %98 to i64
  %100 = and i64 %99, 31
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* %3, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 (i32, i8*, ...) @device_printf(i32 %103, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %104)
  br label %148

106:                                              ; preds = %97
  %107 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %108 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %6, align 8
  %111 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* @bcm_dmamap_cb, align 4
  %115 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %116 = call i32 @bus_dmamap_load(i32 %109, i32 %112, i8* %113, i32 4, i32 %114, i32* %8, i32 %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %106
  %120 = load i32, i32* %3, align 4
  %121 = call i32 (i32, i8*, ...) @device_printf(i32 %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %148

122:                                              ; preds = %106
  %123 = load i8*, i8** %7, align 8
  %124 = bitcast i8* %123 to %struct.TYPE_2__*
  %125 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %6, align 8
  %126 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %125, i32 0, i32 1
  store %struct.TYPE_2__* %124, %struct.TYPE_2__** %126, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %6, align 8
  %129 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @BCM_DMA_CH_FREE, align 4
  %131 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %6, align 8
  %132 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @INFO_WAIT_RESP, align 4
  %134 = load %struct.bcm_dma_ch*, %struct.bcm_dma_ch** %6, align 8
  %135 = getelementptr inbounds %struct.bcm_dma_ch, %struct.bcm_dma_ch* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 4
  %138 = load %struct.bcm_dma_softc*, %struct.bcm_dma_softc** %4, align 8
  %139 = getelementptr inbounds %struct.bcm_dma_softc, %struct.bcm_dma_softc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @BCM_DMA_CS(i32 %141)
  %143 = load i32, i32* @CS_RESET, align 4
  %144 = call i32 @bus_write_4(i32 %140, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %122, %79
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %55

148:                                              ; preds = %119, %102, %94, %55
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %148, %50
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.bcm_dma_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bzero(%struct.bcm_dma_ch*, i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @BCM_DMA_CS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
