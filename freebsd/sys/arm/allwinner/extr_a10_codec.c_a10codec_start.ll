; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_a10codec_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_a10codec_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10codec_chinfo = type { i64, i32, i64, %struct.a10codec_info* }
%struct.a10codec_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.a10codec_info*, i32, i64)* }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@DAC_FIFOC_FIFO_FLUSH = common dso_local global i32 0, align 4
@DAC_FIFOC_MONO_EN = common dso_local global i32 0, align 4
@DAC_FIFOC_FS_SHIFT = common dso_local global i32 0, align 4
@FIFO_MODE_16_15_0 = common dso_local global i32 0, align 4
@DAC_FIFOC_FIFO_MODE_SHIFT = common dso_local global i32 0, align 4
@DRQ_CLR_CNT = common dso_local global i32 0, align 4
@DAC_FIFOC_DRQ_CLR_CNT_SHIFT = common dso_local global i32 0, align 4
@TX_TRIG_LEVEL = common dso_local global i32 0, align 4
@DAC_FIFOC_TX_TRIG_LEVEL_SHIFT = common dso_local global i32 0, align 4
@DAC_FIFOC_DRQ_EN = common dso_local global i32 0, align 4
@ADC_FIFOC_FIFO_FLUSH = common dso_local global i32 0, align 4
@ADC_FIFOC_EN_AD = common dso_local global i32 0, align 4
@ADC_FIFOC_RX_FIFO_MODE = common dso_local global i32 0, align 4
@ADC_FIFOC_MONO_EN = common dso_local global i32 0, align 4
@ADC_FIFOC_FS_SHIFT = common dso_local global i32 0, align 4
@RX_TRIG_LEVEL = common dso_local global i32 0, align 4
@ADC_FIFOC_RX_TRIG_LEVEL_SHIFT = common dso_local global i32 0, align 4
@ADC_FIFOC_DRQ_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a10codec_chinfo*)* @a10codec_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a10codec_start(%struct.a10codec_chinfo* %0) #0 {
  %2 = alloca %struct.a10codec_chinfo*, align 8
  %3 = alloca %struct.a10codec_info*, align 8
  %4 = alloca i32, align 4
  store %struct.a10codec_chinfo* %0, %struct.a10codec_chinfo** %2, align 8
  %5 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %6 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %5, i32 0, i32 3
  %7 = load %struct.a10codec_info*, %struct.a10codec_info** %6, align 8
  store %struct.a10codec_info* %7, %struct.a10codec_info** %3, align 8
  %8 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %9 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %11 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PCMDIR_PLAY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %84

15:                                               ; preds = %1
  %16 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %17 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %18 = call i32 @AC_DAC_FIFOC(%struct.a10codec_info* %17)
  %19 = load i32, i32* @DAC_FIFOC_FIFO_FLUSH, align 4
  %20 = call i32 @CODEC_WRITE(%struct.a10codec_info* %16, i32 %18, i32 %19)
  %21 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %22 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %23 = call i32 @AC_DAC_FIFOS(%struct.a10codec_info* %22)
  %24 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %25 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %26 = call i32 @AC_DAC_FIFOS(%struct.a10codec_info* %25)
  %27 = call i32 @CODEC_READ(%struct.a10codec_info* %24, i32 %26)
  %28 = call i32 @CODEC_WRITE(%struct.a10codec_info* %21, i32 %23, i32 %27)
  %29 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %30 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.a10codec_info*, i32, i64)*, i32 (%struct.a10codec_info*, i32, i64)** %32, align 8
  %34 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %35 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %36 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 %33(%struct.a10codec_info* %34, i32 0, i64 %37)
  %39 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %40 = call i32 @a10codec_dmaconfig(%struct.a10codec_chinfo* %39)
  %41 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %42 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %43 = call i32 @AC_DAC_FIFOC(%struct.a10codec_info* %42)
  %44 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %45 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @AFMT_CHANNEL(i32 %46)
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %15
  %50 = load i32, i32* @DAC_FIFOC_MONO_EN, align 4
  br label %52

51:                                               ; preds = %15
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  %54 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %55 = call i32 @a10codec_fs(%struct.a10codec_chinfo* %54)
  %56 = load i32, i32* @DAC_FIFOC_FS_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %53, %57
  %59 = load i32, i32* @FIFO_MODE_16_15_0, align 4
  %60 = load i32, i32* @DAC_FIFOC_FIFO_MODE_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = or i32 %58, %61
  %63 = load i32, i32* @DRQ_CLR_CNT, align 4
  %64 = load i32, i32* @DAC_FIFOC_DRQ_CLR_CNT_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = or i32 %62, %65
  %67 = load i32, i32* @TX_TRIG_LEVEL, align 4
  %68 = load i32, i32* @DAC_FIFOC_TX_TRIG_LEVEL_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = or i32 %66, %69
  %71 = call i32 @CODEC_WRITE(%struct.a10codec_info* %41, i32 %43, i32 %70)
  %72 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %73 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %74 = call i32 @AC_DAC_FIFOC(%struct.a10codec_info* %73)
  %75 = call i32 @CODEC_READ(%struct.a10codec_info* %72, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* @DAC_FIFOC_DRQ_EN, align 4
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %80 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %81 = call i32 @AC_DAC_FIFOC(%struct.a10codec_info* %80)
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @CODEC_WRITE(%struct.a10codec_info* %79, i32 %81, i32 %82)
  br label %149

84:                                               ; preds = %1
  %85 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %86 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %87 = call i32 @AC_ADC_FIFOC(%struct.a10codec_info* %86)
  %88 = load i32, i32* @ADC_FIFOC_FIFO_FLUSH, align 4
  %89 = call i32 @CODEC_WRITE(%struct.a10codec_info* %85, i32 %87, i32 %88)
  %90 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %91 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %92 = call i32 @AC_ADC_FIFOS(%struct.a10codec_info* %91)
  %93 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %94 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %95 = call i32 @AC_ADC_FIFOS(%struct.a10codec_info* %94)
  %96 = call i32 @CODEC_READ(%struct.a10codec_info* %93, i32 %95)
  %97 = call i32 @CODEC_WRITE(%struct.a10codec_info* %90, i32 %92, i32 %96)
  %98 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %99 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32 (%struct.a10codec_info*, i32, i64)*, i32 (%struct.a10codec_info*, i32, i64)** %101, align 8
  %103 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %104 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %105 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 %102(%struct.a10codec_info* %103, i32 0, i64 %106)
  %108 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %109 = call i32 @a10codec_dmaconfig(%struct.a10codec_chinfo* %108)
  %110 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %111 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %112 = call i32 @AC_ADC_FIFOC(%struct.a10codec_info* %111)
  %113 = load i32, i32* @ADC_FIFOC_EN_AD, align 4
  %114 = load i32, i32* @ADC_FIFOC_RX_FIFO_MODE, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %117 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @AFMT_CHANNEL(i32 %118)
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %123

121:                                              ; preds = %84
  %122 = load i32, i32* @ADC_FIFOC_MONO_EN, align 4
  br label %124

123:                                              ; preds = %84
  br label %124

124:                                              ; preds = %123, %121
  %125 = phi i32 [ %122, %121 ], [ 0, %123 ]
  %126 = or i32 %115, %125
  %127 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %128 = call i32 @a10codec_fs(%struct.a10codec_chinfo* %127)
  %129 = load i32, i32* @ADC_FIFOC_FS_SHIFT, align 4
  %130 = shl i32 %128, %129
  %131 = or i32 %126, %130
  %132 = load i32, i32* @RX_TRIG_LEVEL, align 4
  %133 = load i32, i32* @ADC_FIFOC_RX_TRIG_LEVEL_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = or i32 %131, %134
  %136 = call i32 @CODEC_WRITE(%struct.a10codec_info* %110, i32 %112, i32 %135)
  %137 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %138 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %139 = call i32 @AC_ADC_FIFOC(%struct.a10codec_info* %138)
  %140 = call i32 @CODEC_READ(%struct.a10codec_info* %137, i32 %139)
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* @ADC_FIFOC_DRQ_EN, align 4
  %142 = load i32, i32* %4, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %4, align 4
  %144 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %145 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %146 = call i32 @AC_ADC_FIFOC(%struct.a10codec_info* %145)
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @CODEC_WRITE(%struct.a10codec_info* %144, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %124, %52
  %150 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %151 = call i32 @a10codec_transfer(%struct.a10codec_chinfo* %150)
  ret void
}

declare dso_local i32 @CODEC_WRITE(%struct.a10codec_info*, i32, i32) #1

declare dso_local i32 @AC_DAC_FIFOC(%struct.a10codec_info*) #1

declare dso_local i32 @AC_DAC_FIFOS(%struct.a10codec_info*) #1

declare dso_local i32 @CODEC_READ(%struct.a10codec_info*, i32) #1

declare dso_local i32 @a10codec_dmaconfig(%struct.a10codec_chinfo*) #1

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @a10codec_fs(%struct.a10codec_chinfo*) #1

declare dso_local i32 @AC_ADC_FIFOC(%struct.a10codec_info*) #1

declare dso_local i32 @AC_ADC_FIFOS(%struct.a10codec_info*) #1

declare dso_local i32 @a10codec_transfer(%struct.a10codec_chinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
