; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ipuv3.c_ipu3_fb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ipuv3.c_ipu3_fb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_adapter_softc = type { i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.ipu3sc_softc = type { i32, i64 }

@va_softc = common dso_local global %struct.video_adapter_softc zeroinitializer, align 8
@cpmem = common dso_local global i32 0, align 4
@IMX_IPU_DP1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%dx%d [%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ipu3_fb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu3_fb_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ipu3sc_softc*, align 8
  %4 = alloca %struct.video_adapter_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.ipu3sc_softc*
  store %struct.ipu3sc_softc* %8, %struct.ipu3sc_softc** %3, align 8
  store %struct.video_adapter_softc* @va_softc, %struct.video_adapter_softc** %4, align 8
  %9 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %3, align 8
  %10 = load i32, i32* @cpmem, align 4
  %11 = load i32, i32* @IMX_IPU_DP1, align 4
  %12 = call i32 @CPMEM_OFFSET(i32 %11, i32 23, i32 0, i32 16)
  %13 = call i32 @IPUV3_READ(%struct.ipu3sc_softc* %9, i32 %10, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 %14, 32
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %3, align 8
  %17 = load i32, i32* @cpmem, align 4
  %18 = load i32, i32* @IMX_IPU_DP1, align 4
  %19 = call i32 @CPMEM_OFFSET(i32 %18, i32 23, i32 0, i32 12)
  %20 = call i32 @IPUV3_READ(%struct.ipu3sc_softc* %16, i32 %17, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 29
  %25 = and i32 %24, 8191
  %26 = add nsw i32 %25, 1
  %27 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %28 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 42
  %31 = and i32 %30, 4095
  %32 = add nsw i32 %31, 1
  %33 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %34 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %3, align 8
  %36 = load i32, i32* @cpmem, align 4
  %37 = load i32, i32* @IMX_IPU_DP1, align 4
  %38 = call i32 @CPMEM_OFFSET(i32 %37, i32 23, i32 1, i32 12)
  %39 = call i32 @IPUV3_READ(%struct.ipu3sc_softc* %35, i32 %36, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, 6
  %42 = and i32 %41, 16383
  %43 = add nsw i32 %42, 1
  %44 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %45 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %47 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %50 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %53 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i32 %54)
  %56 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %57 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %60 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %58, %61
  %63 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %64 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %3, align 8
  %66 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %67 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ipu3_fb_malloc(%struct.ipu3sc_softc* %65, i32 %68)
  %70 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %3, align 8
  %71 = load i32, i32* @cpmem, align 4
  %72 = load i32, i32* @IMX_IPU_DP1, align 4
  %73 = call i32 @CPMEM_OFFSET(i32 %72, i32 23, i32 1, i32 0)
  %74 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %3, align 8
  %75 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = ashr i32 %76, 3
  %78 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %3, align 8
  %79 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = ashr i32 %80, 3
  %82 = shl i32 %81, 29
  %83 = or i32 %77, %82
  %84 = call i32 @IPUV3_WRITE(%struct.ipu3sc_softc* %70, i32 %71, i32 %73, i32 %83)
  %85 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %3, align 8
  %86 = load i32, i32* @cpmem, align 4
  %87 = load i32, i32* @IMX_IPU_DP1, align 4
  %88 = call i32 @CPMEM_OFFSET(i32 %87, i32 23, i32 1, i32 4)
  %89 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %3, align 8
  %90 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = ashr i32 %91, 3
  %93 = ashr i32 %92, 3
  %94 = call i32 @IPUV3_WRITE(%struct.ipu3sc_softc* %85, i32 %86, i32 %88, i32 %93)
  %95 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %3, align 8
  %96 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %99 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %98, i32 0, i32 4
  store i64 %97, i64* %99, align 8
  %100 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %3, align 8
  %101 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %105 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %104, i32 0, i32 5
  store i64 %103, i64* %105, align 8
  %106 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %107 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %110 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sdiv i32 %108, %111
  %113 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %114 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 8
  %115 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %116 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %117, 8
  %119 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %4, align 8
  %120 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %119, i32 0, i32 7
  store i32 %118, i32* %120, align 4
  ret void
}

declare dso_local i32 @IPUV3_READ(%struct.ipu3sc_softc*, i32, i32) #1

declare dso_local i32 @CPMEM_OFFSET(i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @ipu3_fb_malloc(%struct.ipu3sc_softc*, i32) #1

declare dso_local i32 @IPUV3_WRITE(%struct.ipu3sc_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
