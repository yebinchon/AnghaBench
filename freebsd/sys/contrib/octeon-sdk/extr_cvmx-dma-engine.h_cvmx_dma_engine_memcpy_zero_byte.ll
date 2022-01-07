; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-dma-engine.h_cvmx_dma_engine_memcpy_zero_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-dma-engine.h_cvmx_dma_engine_memcpy_zero_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }

@CVMX_DMA_ENGINE_TRANSFER_INTERNAL = common dso_local global i32 0, align 4
@OCTEON_FEATURE_DICI_MODE = common dso_local global i32 0, align 4
@CVMX_DPI_DMA_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, i32, i32)* @cvmx_dma_engine_memcpy_zero_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvmx_dma_engine_memcpy_zero_byte(i32 %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca %struct.TYPE_8__, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @CVMX_DMA_ENGINE_TRANSFER_INTERNAL, align 4
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @OCTEON_FEATURE_DICI_MODE, align 4
  %18 = call i64 @octeon_has_feature(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %5
  %21 = load i32, i32* @CVMX_DPI_DMA_CONTROL, align 4
  %22 = call i32 @cvmx_read_csr(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, 1
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %28, %20
  br label %36

36:                                               ; preds = %35, %5
  %37 = load i32, i32* %6, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @cvmx_ptr_to_phys(i8* %38)
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @cvmx_ptr_to_phys(i8* %40)
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @cvmx_dma_engine_transfer(i32 %37, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %11, i32 %39, i32 %41, i32 %42)
  ret i32 %43
}

declare dso_local i64 @octeon_has_feature(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @cvmx_dma_engine_transfer(i32, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i32, i32, i32) #1

declare dso_local i32 @cvmx_ptr_to_phys(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
