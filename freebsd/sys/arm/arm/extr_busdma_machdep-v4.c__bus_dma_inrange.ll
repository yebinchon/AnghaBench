; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v4.c__bus_dma_inrange.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v4.c__bus_dma_inrange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm32_dma_range = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.arm32_dma_range* (%struct.arm32_dma_range*, i32, i64)* @_bus_dma_inrange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.arm32_dma_range* @_bus_dma_inrange(%struct.arm32_dma_range* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.arm32_dma_range*, align 8
  %5 = alloca %struct.arm32_dma_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.arm32_dma_range*, align 8
  %9 = alloca i32, align 4
  store %struct.arm32_dma_range* %0, %struct.arm32_dma_range** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.arm32_dma_range*, %struct.arm32_dma_range** %5, align 8
  store %struct.arm32_dma_range* %10, %struct.arm32_dma_range** %8, align 8
  br label %11

11:                                               ; preds = %35, %3
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.arm32_dma_range*, %struct.arm32_dma_range** %8, align 8
  %18 = getelementptr inbounds %struct.arm32_dma_range, %struct.arm32_dma_range* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @round_page(i64 %22)
  %24 = load %struct.arm32_dma_range*, %struct.arm32_dma_range** %8, align 8
  %25 = getelementptr inbounds %struct.arm32_dma_range, %struct.arm32_dma_range* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.arm32_dma_range*, %struct.arm32_dma_range** %8, align 8
  %28 = getelementptr inbounds %struct.arm32_dma_range, %struct.arm32_dma_range* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = icmp sle i64 %23, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load %struct.arm32_dma_range*, %struct.arm32_dma_range** %8, align 8
  store %struct.arm32_dma_range* %33, %struct.arm32_dma_range** %4, align 8
  br label %41

34:                                               ; preds = %21, %15
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  %38 = load %struct.arm32_dma_range*, %struct.arm32_dma_range** %8, align 8
  %39 = getelementptr inbounds %struct.arm32_dma_range, %struct.arm32_dma_range* %38, i32 1
  store %struct.arm32_dma_range* %39, %struct.arm32_dma_range** %8, align 8
  br label %11

40:                                               ; preds = %11
  store %struct.arm32_dma_range* null, %struct.arm32_dma_range** %4, align 8
  br label %41

41:                                               ; preds = %40, %32
  %42 = load %struct.arm32_dma_range*, %struct.arm32_dma_range** %4, align 8
  ret %struct.arm32_dma_range* %42
}

declare dso_local i64 @round_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
