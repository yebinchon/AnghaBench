; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v6.c__bus_dmamap_count_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v6.c__bus_dmamap_count_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@KTR_BUSDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"lowaddr= %d, boundary= %d, alignment= %d map= %p, pagesneeded= %d\00", align 1
@kernel_pmap = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"pagesneeded= %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64, %struct.TYPE_8__*, i8*, i64, i32)* @_bus_dmamap_count_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bus_dmamap_count_pages(%struct.TYPE_9__* %0, i64 %1, %struct.TYPE_8__* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %94

20:                                               ; preds = %6
  %21 = load i32, i32* @KTR_BUSDMA, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @CTR5(i32 %21, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %30, %struct.TYPE_8__* %31, i64 %34)
  %36 = load i8*, i8** %10, align 8
  %37 = ptrtoint i8* %36 to i64
  store i64 %37, i64* %13, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = load i64, i64* %11, align 8
  %41 = add nsw i64 %39, %40
  store i64 %41, i64* %14, align 8
  br label %42

42:                                               ; preds = %80, %20
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %14, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %88

46:                                               ; preds = %42
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @kernel_pmap, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @__predict_true(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i64, i64* %13, align 8
  %55 = call i32 @pmap_kextract(i64 %54)
  store i32 %55, i32* %15, align 4
  br label %60

56:                                               ; preds = %46
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @pmap_extract(i64 %57, i64 %58)
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %56, %53
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* %13, align 8
  %66 = sub nsw i64 %64, %65
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* @PAGE_MASK, align 8
  %70 = and i64 %68, %69
  %71 = sub nsw i64 %67, %70
  %72 = call i32 @min(i64 %66, i64 %71)
  %73 = call i64 @must_bounce(%struct.TYPE_9__* %61, %struct.TYPE_8__* %62, i32 %63, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %60
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %75, %60
  %81 = load i64, i64* @PAGE_SIZE, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* @PAGE_MASK, align 8
  %84 = and i64 %82, %83
  %85 = sub nsw i64 %81, %84
  %86 = load i64, i64* %13, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %13, align 8
  br label %42

88:                                               ; preds = %42
  %89 = load i32, i32* @KTR_BUSDMA, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @CTR1(i32 %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %92)
  br label %94

94:                                               ; preds = %88, %6
  ret void
}

declare dso_local i32 @CTR5(i32, i8*, i32, i32, i32, %struct.TYPE_8__*, i64) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @pmap_kextract(i64) #1

declare dso_local i32 @pmap_extract(i64, i64) #1

declare dso_local i64 @must_bounce(%struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @CTR1(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
