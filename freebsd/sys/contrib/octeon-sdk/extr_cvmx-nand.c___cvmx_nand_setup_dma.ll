; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-nand.c___cvmx_nand_setup_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-nand.c___cvmx_nand_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_mio_ndf_dma_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@CVMX_SYNCWS = common dso_local global i32 0, align 4
@CVMX_MIO_NDF_DMA_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i32)* @__cvmx_nand_setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cvmx_nand_setup_dma(i32 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.cvmx_mio_ndf_dma_cfg, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call i32 (...) @CVMX_NAND_LOG_CALLED()
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @CVMX_NAND_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @CVMX_NAND_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i64, i64* %7, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @CVMX_NAND_LOG_PARAM(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @CVMX_NAND_LOG_PARAM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = bitcast %union.cvmx_mio_ndf_dma_cfg* %9 to i64*
  store i64 0, i64* %20, align 8
  %21 = bitcast %union.cvmx_mio_ndf_dma_cfg* %9 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = bitcast %union.cvmx_mio_ndf_dma_cfg* %9 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = bitcast %union.cvmx_mio_ndf_dma_cfg* %9 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 7
  %30 = ashr i32 %29, 3
  %31 = sub nsw i32 %30, 1
  %32 = bitcast %union.cvmx_mio_ndf_dma_cfg* %9 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* %7, align 8
  %35 = bitcast %union.cvmx_mio_ndf_dma_cfg* %9 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @CVMX_SYNCWS, align 4
  %38 = load i32, i32* @CVMX_MIO_NDF_DMA_CFG, align 4
  %39 = bitcast %union.cvmx_mio_ndf_dma_cfg* %9 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @cvmx_write_csr(i32 %38, i64 %40)
  %42 = call i32 (...) @CVMX_NAND_RETURN_NOTHING()
  ret void
}

declare dso_local i32 @CVMX_NAND_LOG_CALLED(...) #1

declare dso_local i32 @CVMX_NAND_LOG_PARAM(i8*, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_NAND_RETURN_NOTHING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
