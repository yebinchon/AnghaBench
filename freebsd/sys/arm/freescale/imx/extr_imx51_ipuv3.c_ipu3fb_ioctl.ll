; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ipuv3.c_ipu3fb_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ipuv3.c_ipu3fb_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_adapter_softc = type { i32, i32, i32, i32 }
%struct.fbtype = type { i32, i32, i32, i32, i32, i32 }

@FBTYPE_PCIMISC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64)* @ipu3fb_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu3fb_ioctl(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.video_adapter_softc*, align 8
  %9 = alloca %struct.fbtype*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = bitcast i32* %10 to %struct.video_adapter_softc*
  store %struct.video_adapter_softc* %11, %struct.video_adapter_softc** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %61 [
    i32 129, label %13
    i32 128, label %59
  ]

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = inttoptr i64 %14 to %struct.fbtype*
  store %struct.fbtype* %15, %struct.fbtype** %9, align 8
  %16 = load i32, i32* @FBTYPE_PCIMISC, align 4
  %17 = load %struct.fbtype*, %struct.fbtype** %9, align 8
  %18 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %8, align 8
  %20 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.fbtype*, %struct.fbtype** %9, align 8
  %23 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %8, align 8
  %25 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.fbtype*, %struct.fbtype** %9, align 8
  %28 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %8, align 8
  %30 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fbtype*, %struct.fbtype** %9, align 8
  %33 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %8, align 8
  %35 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sle i32 %36, 1
  br i1 %37, label %43, label %38

38:                                               ; preds = %13
  %39 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %8, align 8
  %40 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 8
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %13
  %44 = load %struct.fbtype*, %struct.fbtype** %9, align 8
  %45 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  br label %53

46:                                               ; preds = %38
  %47 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %8, align 8
  %48 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 1, %49
  %51 = load %struct.fbtype*, %struct.fbtype** %9, align 8
  %52 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %46, %43
  %54 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %8, align 8
  %55 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fbtype*, %struct.fbtype** %9, align 8
  %58 = getelementptr inbounds %struct.fbtype, %struct.fbtype* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  br label %66

59:                                               ; preds = %3
  %60 = load i32, i32* @ENODEV, align 4
  store i32 %60, i32* %4, align 4
  br label %67

61:                                               ; preds = %3
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @fb_commonioctl(i32* %62, i32 %63, i64 %64)
  store i32 %65, i32* %4, align 4
  br label %67

66:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %61, %59
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @fb_commonioctl(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
