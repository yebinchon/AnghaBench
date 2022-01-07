; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_a10codec_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_a10codec_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10codec_chinfo = type { i32, i32, i32, %struct.a10codec_info* }
%struct.a10codec_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.a10codec_info*, i32, i32)* }

@PCMDIR_PLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a10codec_chinfo*)* @a10codec_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a10codec_stop(%struct.a10codec_chinfo* %0) #0 {
  %2 = alloca %struct.a10codec_chinfo*, align 8
  %3 = alloca %struct.a10codec_info*, align 8
  store %struct.a10codec_chinfo* %0, %struct.a10codec_chinfo** %2, align 8
  %4 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %5 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %4, i32 0, i32 3
  %6 = load %struct.a10codec_info*, %struct.a10codec_info** %5, align 8
  store %struct.a10codec_info* %6, %struct.a10codec_info** %3, align 8
  %7 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %8 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %11 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @SUNXI_DMA_HALT(i32 %9, i32 %12)
  %14 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %15 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.a10codec_info*, i32, i32)*, i32 (%struct.a10codec_info*, i32, i32)** %17, align 8
  %19 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %20 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %21 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %18(%struct.a10codec_info* %19, i32 1, i32 %22)
  %24 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %25 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PCMDIR_PLAY, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %31 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %32 = call i32 @AC_DAC_FIFOC(%struct.a10codec_info* %31)
  %33 = call i32 @CODEC_WRITE(%struct.a10codec_info* %30, i32 %32, i32 0)
  br label %39

34:                                               ; preds = %1
  %35 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %36 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %37 = call i32 @AC_ADC_FIFOC(%struct.a10codec_info* %36)
  %38 = call i32 @CODEC_WRITE(%struct.a10codec_info* %35, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %34, %29
  ret void
}

declare dso_local i32 @SUNXI_DMA_HALT(i32, i32) #1

declare dso_local i32 @CODEC_WRITE(%struct.a10codec_info*, i32, i32) #1

declare dso_local i32 @AC_DAC_FIFOC(%struct.a10codec_info*) #1

declare dso_local i32 @AC_ADC_FIFOC(%struct.a10codec_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
