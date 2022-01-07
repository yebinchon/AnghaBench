; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ipuv3_fbd.c_ipu3_fb_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ipuv3_fbd.c_ipu3_fb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu3sc_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64, i32, i32 }

@cpmem = common dso_local global i32 0, align 4
@IMX_IPU_DP1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%dx%d [%d]\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu3sc_softc*)* @ipu3_fb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu3_fb_init(%struct.ipu3sc_softc* %0) #0 {
  %2 = alloca %struct.ipu3sc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ipu3sc_softc* %0, %struct.ipu3sc_softc** %2, align 8
  %5 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %6 = load i32, i32* @cpmem, align 4
  %7 = load i32, i32* @IMX_IPU_DP1, align 4
  %8 = call i32 @CPMEM_OFFSET(i32 %7, i32 23, i32 0, i32 16)
  %9 = call i32 @IPUV3_READ(%struct.ipu3sc_softc* %5, i32 %6, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = shl i32 %10, 32
  store i32 %11, i32* %3, align 4
  %12 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %13 = load i32, i32* @cpmem, align 4
  %14 = load i32, i32* @IMX_IPU_DP1, align 4
  %15 = call i32 @CPMEM_OFFSET(i32 %14, i32 23, i32 0, i32 12)
  %16 = call i32 @IPUV3_READ(%struct.ipu3sc_softc* %12, i32 %13, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = ashr i32 %19, 29
  %21 = and i32 %20, 8191
  %22 = add nsw i32 %21, 1
  %23 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* %3, align 4
  %27 = ashr i32 %26, 42
  %28 = and i32 %27, 4095
  %29 = add nsw i32 %28, 1
  %30 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %34 = load i32, i32* @cpmem, align 4
  %35 = load i32, i32* @IMX_IPU_DP1, align 4
  %36 = call i32 @CPMEM_OFFSET(i32 %35, i32 23, i32 1, i32 12)
  %37 = call i32 @IPUV3_READ(%struct.ipu3sc_softc* %33, i32 %34, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = ashr i32 %38, 6
  %40 = and i32 %39, 16383
  %41 = add nsw i32 %40, 1
  %42 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %43 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %46 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %50 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %54 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %52, i32 %56)
  %58 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %59 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %63 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %61, %65
  %67 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %68 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 4
  %70 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %71 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @M_DEVBUF, align 4
  %75 = load i32, i32* @M_ZERO, align 4
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = call i64 @contigmalloc(i32 %73, i32 %74, i32 %75, i32 0, i32 -1, i32 %76, i32 0)
  %78 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %79 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 4
  store i64 %77, i64* %80, align 8
  %81 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %82 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @vtophys(i64 %84)
  %86 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %87 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 5
  store i64 %85, i64* %88, align 8
  %89 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %90 = load i32, i32* @cpmem, align 4
  %91 = load i32, i32* @IMX_IPU_DP1, align 4
  %92 = call i32 @CPMEM_OFFSET(i32 %91, i32 23, i32 1, i32 0)
  %93 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %94 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = ashr i32 %97, 3
  %99 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %100 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = ashr i32 %103, 3
  %105 = shl i32 %104, 29
  %106 = or i32 %98, %105
  %107 = call i32 @IPUV3_WRITE(%struct.ipu3sc_softc* %89, i32 %90, i32 %92, i32 %106)
  %108 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %109 = load i32, i32* @cpmem, align 4
  %110 = load i32, i32* @IMX_IPU_DP1, align 4
  %111 = call i32 @CPMEM_OFFSET(i32 %110, i32 23, i32 1, i32 4)
  %112 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %113 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = ashr i32 %116, 3
  %118 = ashr i32 %117, 3
  %119 = call i32 @IPUV3_WRITE(%struct.ipu3sc_softc* %108, i32 %109, i32 %111, i32 %118)
  %120 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %121 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %125 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sdiv i32 %123, %127
  %129 = mul nsw i32 %128, 8
  %130 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %131 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 7
  store i32 %129, i32* %132, align 4
  %133 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %2, align 8
  %134 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 6
  store i32 %129, i32* %135, align 8
  ret void
}

declare dso_local i32 @IPUV3_READ(%struct.ipu3sc_softc*, i32, i32) #1

declare dso_local i32 @CPMEM_OFFSET(i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i64 @contigmalloc(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @vtophys(i64) #1

declare dso_local i32 @IPUV3_WRITE(%struct.ipu3sc_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
