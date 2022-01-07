; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_a10codec_dmaconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_codec.c_a10codec_dmaconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10codec_chinfo = type { i64, i32, i32, %struct.a10codec_info* }
%struct.a10codec_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sunxi_dma_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.a10codec_chinfo*)* @a10codec_dmaconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a10codec_dmaconfig(%struct.a10codec_chinfo* %0) #0 {
  %2 = alloca %struct.a10codec_chinfo*, align 8
  %3 = alloca %struct.a10codec_info*, align 8
  %4 = alloca %struct.sunxi_dma_config, align 4
  store %struct.a10codec_chinfo* %0, %struct.a10codec_chinfo** %2, align 8
  %5 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %6 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %5, i32 0, i32 3
  %7 = load %struct.a10codec_info*, %struct.a10codec_info** %6, align 8
  store %struct.a10codec_info* %7, %struct.a10codec_info** %3, align 8
  %8 = call i32 @memset(%struct.sunxi_dma_config* %4, i32 0, i32 32)
  %9 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %4, i32 0, i32 1
  store i32 16, i32* %9, align 4
  %10 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %4, i32 0, i32 0
  store i32 16, i32* %10, align 4
  %11 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %4, i32 0, i32 3
  store i32 4, i32* %11, align 4
  %12 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %4, i32 0, i32 2
  store i32 4, i32* %12, align 4
  %13 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %14 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PCMDIR_PLAY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %4, i32 0, i32 4
  store i32 1, i32* %19, align 4
  %20 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %21 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %4, i32 0, i32 7
  store i32 %24, i32* %25, align 4
  %26 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %27 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %4, i32 0, i32 6
  store i32 %30, i32* %31, align 4
  br label %46

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %4, i32 0, i32 5
  store i32 1, i32* %33, align 4
  %34 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %35 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %4, i32 0, i32 7
  store i32 %38, i32* %39, align 4
  %40 = load %struct.a10codec_info*, %struct.a10codec_info** %3, align 8
  %41 = getelementptr inbounds %struct.a10codec_info, %struct.a10codec_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %4, i32 0, i32 6
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %32, %18
  %47 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %48 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.a10codec_chinfo*, %struct.a10codec_chinfo** %2, align 8
  %51 = getelementptr inbounds %struct.a10codec_chinfo, %struct.a10codec_chinfo* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @SUNXI_DMA_SET_CONFIG(i32 %49, i32 %52, %struct.sunxi_dma_config* %4)
  ret void
}

declare dso_local i32 @memset(%struct.sunxi_dma_config*, i32, i32) #1

declare dso_local i32 @SUNXI_DMA_SET_CONFIG(i32, i32, %struct.sunxi_dma_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
