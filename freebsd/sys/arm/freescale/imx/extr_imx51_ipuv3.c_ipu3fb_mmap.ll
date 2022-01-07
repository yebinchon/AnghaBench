; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ipuv3.c_ipu3fb_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ipuv3.c_ipu3fb_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_adapter_softc = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64*, i32, i32*)* @ipu3fb_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu3fb_mmap(i32* %0, i32 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.video_adapter_softc*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = bitcast i32* %13 to %struct.video_adapter_softc*
  store %struct.video_adapter_softc* %14, %struct.video_adapter_softc** %12, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %12, align 8
  %17 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %12, align 8
  %20 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %18, %21
  %23 = icmp slt i32 %15, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %5
  %25 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %12, align 8
  %26 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = load i64*, i64** %9, align 8
  store i64 %30, i64* %31, align 8
  store i32 0, i32* %6, align 4
  br label %34

32:                                               ; preds = %5
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %24
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
