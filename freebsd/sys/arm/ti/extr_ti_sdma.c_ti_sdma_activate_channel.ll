; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdma.c_ti_sdma_activate_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdma.c_ti_sdma_activate_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sdma_softc = type { i32, %struct.ti_sdma_channel* }
%struct.ti_sdma_channel = type { void (i32, i64, i8*)*, i32, i32, i32, i32, i8* }

@ti_sdma_sc = common dso_local global %struct.ti_sdma_softc* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NUM_DMA_CHANNELS = common dso_local global i32 0, align 4
@DMA4_CICR_TRANS_ERR_IE = common dso_local global i32 0, align 4
@DMA4_CICR_SECURE_ERR_IE = common dso_local global i32 0, align 4
@DMA4_CICR_SUPERVISOR_ERR_IE = common dso_local global i32 0, align 4
@DMA4_CICR_MISALIGNED_ADRS_ERR_IE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_sdma_activate_channel(i32* %0, void (i32, i64, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca void (i32, i64, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ti_sdma_softc*, align 8
  %9 = alloca %struct.ti_sdma_channel*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store void (i32, i64, i8*)* %1, void (i32, i64, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** @ti_sdma_sc, align 8
  store %struct.ti_sdma_softc* %12, %struct.ti_sdma_softc** %8, align 8
  store %struct.ti_sdma_channel* null, %struct.ti_sdma_channel** %9, align 8
  %13 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %8, align 8
  %14 = icmp eq %struct.ti_sdma_softc* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  store i32 %16, i32* %4, align 4
  br label %135

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %135

22:                                               ; preds = %17
  %23 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %8, align 8
  %24 = call i32 @TI_SDMA_LOCK(%struct.ti_sdma_softc* %23)
  %25 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %8, align 8
  %26 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %8, align 8
  %31 = call i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  store i32 %32, i32* %4, align 4
  br label %135

33:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %56, %33
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @NUM_DMA_CHANNELS, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %8, align 8
  %40 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %11, align 4
  %48 = shl i32 1, %47
  %49 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %8, align 8
  %50 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  br label %59

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %34

59:                                               ; preds = %46, %34
  %60 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %8, align 8
  %61 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %60, i32 0, i32 1
  %62 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %61, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %63, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %62, i64 %65
  store %struct.ti_sdma_channel* %66, %struct.ti_sdma_channel** %9, align 8
  %67 = load void (i32, i64, i8*)*, void (i32, i64, i8*)** %6, align 8
  %68 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %9, align 8
  %69 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %68, i32 0, i32 0
  store void (i32, i64, i8*)* %67, void (i32, i64, i8*)** %69, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %9, align 8
  %72 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %9, align 8
  %74 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %73, i32 0, i32 1
  store i32 1, i32* %74, align 8
  %75 = call i32 @DMA4_CSDP_DATA_TYPE(i32 2)
  %76 = call i32 @DMA4_CSDP_SRC_BURST_MODE(i32 0)
  %77 = or i32 %75, %76
  %78 = call i32 @DMA4_CSDP_DST_BURST_MODE(i32 0)
  %79 = or i32 %77, %78
  %80 = call i32 @DMA4_CSDP_SRC_ENDIANISM(i32 0)
  %81 = or i32 %79, %80
  %82 = call i32 @DMA4_CSDP_DST_ENDIANISM(i32 0)
  %83 = or i32 %81, %82
  %84 = call i32 @DMA4_CSDP_WRITE_MODE(i32 0)
  %85 = or i32 %83, %84
  %86 = call i32 @DMA4_CSDP_SRC_PACKED(i32 0)
  %87 = or i32 %85, %86
  %88 = call i32 @DMA4_CSDP_DST_PACKED(i32 0)
  %89 = or i32 %87, %88
  %90 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %9, align 8
  %91 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = call i32 @DMA4_CCR_DST_ADDRESS_MODE(i32 1)
  %93 = call i32 @DMA4_CCR_SRC_ADDRESS_MODE(i32 1)
  %94 = or i32 %92, %93
  %95 = call i32 @DMA4_CCR_READ_PRIORITY(i32 0)
  %96 = or i32 %94, %95
  %97 = call i32 @DMA4_CCR_WRITE_PRIORITY(i32 0)
  %98 = or i32 %96, %97
  %99 = call i32 @DMA4_CCR_SYNC_TRIGGER(i32 0)
  %100 = or i32 %98, %99
  %101 = call i32 @DMA4_CCR_FRAME_SYNC(i32 0)
  %102 = or i32 %100, %101
  %103 = call i32 @DMA4_CCR_BLOCK_SYNC(i32 0)
  %104 = or i32 %102, %103
  %105 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %9, align 8
  %106 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @DMA4_CICR_TRANS_ERR_IE, align 4
  %108 = load i32, i32* @DMA4_CICR_SECURE_ERR_IE, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @DMA4_CICR_SUPERVISOR_ERR_IE, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @DMA4_CICR_MISALIGNED_ADRS_ERR_IE, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %9, align 8
  %115 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @DMA4_CCR(i32 %117)
  store i64 %118, i64* %10, align 8
  br label %119

119:                                              ; preds = %129, %59
  %120 = load i64, i64* %10, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @DMA4_COLOR(i32 %122)
  %124 = icmp sle i64 %120, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %119
  %126 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %8, align 8
  %127 = load i64, i64* %10, align 8
  %128 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %126, i64 %127, i32 0)
  br label %129

129:                                              ; preds = %125
  %130 = load i64, i64* %10, align 8
  %131 = add nsw i64 %130, 4
  store i64 %131, i64* %10, align 8
  br label %119

132:                                              ; preds = %119
  %133 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %8, align 8
  %134 = call i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc* %133)
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %132, %29, %20, %15
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @TI_SDMA_LOCK(%struct.ti_sdma_softc*) #1

declare dso_local i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc*) #1

declare dso_local i32 @DMA4_CSDP_DATA_TYPE(i32) #1

declare dso_local i32 @DMA4_CSDP_SRC_BURST_MODE(i32) #1

declare dso_local i32 @DMA4_CSDP_DST_BURST_MODE(i32) #1

declare dso_local i32 @DMA4_CSDP_SRC_ENDIANISM(i32) #1

declare dso_local i32 @DMA4_CSDP_DST_ENDIANISM(i32) #1

declare dso_local i32 @DMA4_CSDP_WRITE_MODE(i32) #1

declare dso_local i32 @DMA4_CSDP_SRC_PACKED(i32) #1

declare dso_local i32 @DMA4_CSDP_DST_PACKED(i32) #1

declare dso_local i32 @DMA4_CCR_DST_ADDRESS_MODE(i32) #1

declare dso_local i32 @DMA4_CCR_SRC_ADDRESS_MODE(i32) #1

declare dso_local i32 @DMA4_CCR_READ_PRIORITY(i32) #1

declare dso_local i32 @DMA4_CCR_WRITE_PRIORITY(i32) #1

declare dso_local i32 @DMA4_CCR_SYNC_TRIGGER(i32) #1

declare dso_local i32 @DMA4_CCR_FRAME_SYNC(i32) #1

declare dso_local i32 @DMA4_CCR_BLOCK_SYNC(i32) #1

declare dso_local i64 @DMA4_CCR(i32) #1

declare dso_local i64 @DMA4_COLOR(i32) #1

declare dso_local i32 @ti_sdma_write_4(%struct.ti_sdma_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
