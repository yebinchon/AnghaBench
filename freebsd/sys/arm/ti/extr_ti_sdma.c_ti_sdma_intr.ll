; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdma.c_ti_sdma_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_sdma.c_ti_sdma_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sdma_softc = type { i32, i32, %struct.ti_sdma_channel* }
%struct.ti_sdma_channel = type { i32, i32 (i32, i32, i32)* }

@ti_sdma_sc = common dso_local global %struct.ti_sdma_softc* null, align 8
@NUM_DMA_IRQS = common dso_local global i32 0, align 4
@NUM_DMA_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Spurious DMA IRQ for channel %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"IRQ %d for a non-activated channel %d\0A\00", align 1
@DMA4_CSR_DROP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"Synchronization event drop occurred during the transfer on channel %u\0A\00", align 1
@DMA4_CSR_SECURE_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Secure transaction error event on channel %u\0A\00", align 1
@DMA4_CSR_MISALIGNED_ADRS_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Misaligned address error event on channel %u\0A\00", align 1
@DMA4_CSR_TRANS_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Transaction error event on channel %u\0A\00", align 1
@DMA4_CSR_CLEAR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ti_sdma_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_sdma_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ti_sdma_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ti_sdma_channel*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** @ti_sdma_sc, align 8
  store %struct.ti_sdma_softc* %9, %struct.ti_sdma_softc** %3, align 8
  %10 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %3, align 8
  %11 = call i32 @TI_SDMA_LOCK(%struct.ti_sdma_softc* %10)
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %151, %1
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @NUM_DMA_IRQS, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %154

16:                                               ; preds = %12
  %17 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %3, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @DMA4_IRQSTATUS_L(i32 %18)
  %20 = call i32 @ti_sdma_read_4(%struct.ti_sdma_softc* %17, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %3, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @DMA4_IRQENABLE_L(i32 %22)
  %24 = call i32 @ti_sdma_read_4(%struct.ti_sdma_softc* %21, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %151

30:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %147, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @NUM_DMA_CHANNELS, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %150

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 1, %37
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %146

41:                                               ; preds = %35
  %42 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %42, i32 0, i32 2
  %44 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %44, i64 %46
  store %struct.ti_sdma_channel* %47, %struct.ti_sdma_channel** %8, align 8
  %48 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @DMA4_CSR(i32 %49)
  %51 = call i32 @ti_sdma_read_4(%struct.ti_sdma_softc* %48, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %41
  %55 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %3, align 8
  %56 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %147

60:                                               ; preds = %41
  %61 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = shl i32 1, %64
  %66 = and i32 %63, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %3, align 8
  %70 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73)
  br label %147

75:                                               ; preds = %60
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @DMA4_CSR_DROP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %3, align 8
  %82 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %83, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %80, %75
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @DMA4_CSR_SECURE_ERR, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %3, align 8
  %93 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %94, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %91, %86
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @DMA4_CSR_MISALIGNED_ADRS_ERR, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %3, align 8
  %104 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %105, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %102, %97
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @DMA4_CSR_TRANS_ERR, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %3, align 8
  %115 = getelementptr inbounds %struct.ti_sdma_softc, %struct.ti_sdma_softc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %116, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %113, %108
  %120 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %3, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @DMA4_CSR(i32 %121)
  %123 = load i32, i32* @DMA4_CSR_CLEAR_MASK, align 4
  %124 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %120, i32 %122, i32 %123)
  %125 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %3, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @DMA4_IRQSTATUS_L(i32 %126)
  %128 = load i32, i32* %6, align 4
  %129 = shl i32 1, %128
  %130 = call i32 @ti_sdma_write_4(%struct.ti_sdma_softc* %125, i32 %127, i32 %129)
  %131 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %8, align 8
  %132 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %131, i32 0, i32 1
  %133 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %132, align 8
  %134 = icmp ne i32 (i32, i32, i32)* %133, null
  br i1 %134, label %135, label %145

135:                                              ; preds = %119
  %136 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %8, align 8
  %137 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %136, i32 0, i32 1
  %138 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.ti_sdma_channel*, %struct.ti_sdma_channel** %8, align 8
  %142 = getelementptr inbounds %struct.ti_sdma_channel, %struct.ti_sdma_channel* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 %138(i32 %139, i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %135, %119
  br label %146

146:                                              ; preds = %145, %35
  br label %147

147:                                              ; preds = %146, %68, %54
  %148 = load i32, i32* %6, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %31

150:                                              ; preds = %31
  br label %151

151:                                              ; preds = %150, %29
  %152 = load i32, i32* %7, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %12

154:                                              ; preds = %12
  %155 = load %struct.ti_sdma_softc*, %struct.ti_sdma_softc** %3, align 8
  %156 = call i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc* %155)
  ret void
}

declare dso_local i32 @TI_SDMA_LOCK(%struct.ti_sdma_softc*) #1

declare dso_local i32 @ti_sdma_read_4(%struct.ti_sdma_softc*, i32) #1

declare dso_local i32 @DMA4_IRQSTATUS_L(i32) #1

declare dso_local i32 @DMA4_IRQENABLE_L(i32) #1

declare dso_local i32 @DMA4_CSR(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @ti_sdma_write_4(%struct.ti_sdma_softc*, i32, i32) #1

declare dso_local i32 @TI_SDMA_UNLOCK(%struct.ti_sdma_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
