; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v4.c__bus_dmamap_count_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v4.c__bus_dmamap_count_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@KTR_BUSDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"lowaddr= %d, boundary= %d, alignment= %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"map= %p, pagesneeded= %d\00", align 1
@kernel_pmap = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"pagesneeded= %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*, i64, i8*, i64, i32)* @_bus_dmamap_count_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bus_dmamap_count_pages(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i64 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %83

20:                                               ; preds = %6
  %21 = load i32, i32* @KTR_BUSDMA, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CTR3(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %30)
  %32 = load i32, i32* @KTR_BUSDMA, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @CTR2(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %33, i64 %36)
  %38 = load i8*, i8** %10, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = call i64 @trunc_page(i64 %39)
  store i64 %40, i64* %13, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = load i64, i64* %11, align 8
  %44 = add nsw i64 %42, %43
  store i64 %44, i64* %14, align 8
  br label %45

45:                                               ; preds = %73, %20
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %45
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @kernel_pmap, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @__predict_true(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i64, i64* %13, align 8
  %58 = call i32 @pmap_kextract(i64 %57)
  store i32 %58, i32* %15, align 4
  br label %63

59:                                               ; preds = %49
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i32 @pmap_extract(i64 %60, i64 %61)
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %59, %56
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i64 @run_filter(%struct.TYPE_8__* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %68, %63
  %74 = load i64, i64* @PAGE_SIZE, align 8
  %75 = load i64, i64* %13, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* %13, align 8
  br label %45

77:                                               ; preds = %45
  %78 = load i32, i32* @KTR_BUSDMA, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @CTR1(i32 %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  br label %83

83:                                               ; preds = %77, %6
  ret void
}

declare dso_local i32 @CTR3(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @CTR2(i32, i8*, %struct.TYPE_7__*, i64) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @pmap_kextract(i64) #1

declare dso_local i32 @pmap_extract(i64, i64) #1

declare dso_local i64 @run_filter(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @CTR1(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
