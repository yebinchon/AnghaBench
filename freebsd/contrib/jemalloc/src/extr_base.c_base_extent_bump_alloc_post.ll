; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_base.c_base_extent_bump_alloc_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_base.c_base_extent_bump_alloc_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i32* }

@config_stats = common dso_local global i64 0, align 8
@opt_metadata_thp = common dso_local global i64 0, align 8
@metadata_thp_always = common dso_local global i64 0, align 8
@LG_HUGEPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i64, i8*, i64)* @base_extent_bump_alloc_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @base_extent_bump_alloc_post(%struct.TYPE_3__* %0, i32* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i64 @extent_bsize_get(i32* %12)
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %5
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @extent_bsize_get(i32* %16)
  %18 = add nsw i64 %17, 1
  %19 = call i64 @sz_size2index(i64 %18)
  %20 = sub i64 %19, 1
  store i64 %20, i64* %11, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @extent_heap_insert(i32* %25, i32* %26)
  br label %28

28:                                               ; preds = %15, %5
  %29 = load i64, i64* @config_stats, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %113

31:                                               ; preds = %28
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, %32
  store i64 %36, i64* %34, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %38, %39
  %41 = call i64 @PAGE_CEILING(i64 %40)
  %42 = load i8*, i8** %9, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load i64, i64* %8, align 8
  %45 = sub i64 %43, %44
  %46 = call i64 @PAGE_CEILING(i64 %45)
  %47 = sub nsw i64 %41, %46
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sle i64 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp sle i64 %63, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = call i64 (...) @metadata_thp_madvise()
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %112

72:                                               ; preds = %31
  %73 = load i64, i64* @opt_metadata_thp, align 8
  %74 = load i64, i64* @metadata_thp_always, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %76, %72
  %82 = load i8*, i8** %9, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load i64, i64* %10, align 8
  %85 = add i64 %83, %84
  %86 = call i32 @HUGEPAGE_CEILING(i64 %85)
  %87 = load i8*, i8** %9, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = load i64, i64* %8, align 8
  %90 = sub i64 %88, %89
  %91 = call i32 @HUGEPAGE_CEILING(i64 %90)
  %92 = sub nsw i32 %86, %91
  %93 = load i32, i32* @LG_HUGEPAGE, align 4
  %94 = ashr i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, %95
  store i64 %99, i64* %97, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @LG_HUGEPAGE, align 4
  %107 = zext i32 %106 to i64
  %108 = shl i64 %105, %107
  %109 = icmp sge i64 %102, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  br label %112

112:                                              ; preds = %81, %76, %31
  br label %113

113:                                              ; preds = %112, %28
  ret void
}

declare dso_local i64 @extent_bsize_get(i32*) #1

declare dso_local i64 @sz_size2index(i64) #1

declare dso_local i32 @extent_heap_insert(i32*, i32*) #1

declare dso_local i64 @PAGE_CEILING(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @metadata_thp_madvise(...) #1

declare dso_local i32 @HUGEPAGE_CEILING(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
