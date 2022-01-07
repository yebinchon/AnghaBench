; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ipuv3.c_ipu3fb_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ipuv3.c_ipu3fb_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_adapter_softc = type { i32, i32, i32, i32, i32, i32 }

@va_softc = common dso_local global %struct.video_adapter_softc zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ipu3fb_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu3fb_configure(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.video_adapter_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.video_adapter_softc* @va_softc, %struct.video_adapter_softc** %4, align 8
  %5 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %6 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %12 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %11, i32 0, i32 1
  store i32 640, i32* %12, align 4
  %13 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %14 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %13, i32 0, i32 2
  store i32 480, i32* %14, align 4
  %15 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %16 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %15, i32 0, i32 3
  store i32 2, i32* %16, align 4
  %17 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %18 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %21 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %25 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %27 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %26, i32 0, i32 5
  %28 = call i32 @ipu3fb_init(i32 0, i32* %27, i32 0)
  %29 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %30 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %10, %9
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @ipu3fb_init(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
