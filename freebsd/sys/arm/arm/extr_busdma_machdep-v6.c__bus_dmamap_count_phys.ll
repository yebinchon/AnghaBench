; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v6.c__bus_dmamap_count_phys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v6.c__bus_dmamap_count_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@KTR_BUSDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"lowaddr= %d, boundary= %d, alignment= %d map= %p, pagesneeded= %d\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"pagesneeded= %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*, i32, i64, i32)* @_bus_dmamap_count_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bus_dmamap_count_phys(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %77

17:                                               ; preds = %5
  %18 = load i32, i32* @KTR_BUSDMA, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @CTR5(i32 %18, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %27, %struct.TYPE_8__* %28, i64 %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %62, %17
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %71

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @MIN(i64 %38, i64 %41)
  store i64 %42, i64* %12, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i64, i64* %12, align 8
  %47 = call i64 @must_bounce(%struct.TYPE_9__* %43, %struct.TYPE_8__* %44, i32 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %37
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @PAGE_SIZE, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @PAGE_MASK, align 4
  %54 = and i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %51, %55
  %57 = call i64 @MIN(i64 %50, i64 %56)
  store i64 %57, i64* %12, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %49, %37
  %63 = load i64, i64* %12, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %11, align 4
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %9, align 8
  %70 = sub nsw i64 %69, %68
  store i64 %70, i64* %9, align 8
  br label %34

71:                                               ; preds = %34
  %72 = load i32, i32* @KTR_BUSDMA, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @CTR1(i32 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %71, %5
  ret void
}

declare dso_local i32 @CTR5(i32, i8*, i32, i32, i32, %struct.TYPE_8__*, i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @must_bounce(%struct.TYPE_9__*, %struct.TYPE_8__*, i32, i64) #1

declare dso_local i32 @CTR1(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
