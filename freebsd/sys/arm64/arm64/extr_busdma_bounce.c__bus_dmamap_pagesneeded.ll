; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_busdma_bounce.c__bus_dmamap_pagesneeded.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_busdma_bounce.c__bus_dmamap_pagesneeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i64, i32*)* @_bus_dmamap_pagesneeded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bus_dmamap_pagesneeded(%struct.TYPE_4__* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %10, align 4
  br label %14

14:                                               ; preds = %44, %4
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %14
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @MIN(i64 %18, i64 %22)
  store i64 %23, i64* %11, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @bus_dma_run_filter(%struct.TYPE_5__* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %17
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @PAGE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %31, %35
  %37 = call i64 @MIN(i64 %30, i64 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %63

41:                                               ; preds = %29
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %41, %17
  %45 = load i64, i64* %11, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub nsw i64 %51, %50
  store i64 %52, i64* %8, align 8
  br label %14

53:                                               ; preds = %14
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %40
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @bus_dma_run_filter(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
