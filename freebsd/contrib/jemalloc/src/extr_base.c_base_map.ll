; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_base.c_base_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_base.c_base_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* (%struct.TYPE_5__*, i32*, i64, i64, i32*, i32*, i32)* }

@HUGEPAGE = common dso_local global i64 0, align 8
@extent_hooks_default = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_5__*, i32, i64)* @base_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @base_map(i32* %0, %struct.TYPE_5__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @HUGEPAGE_CEILING(i64 %15)
  %17 = icmp eq i64 %14, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i64, i64* @HUGEPAGE, align 8
  store i64 %20, i64* %12, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = icmp eq %struct.TYPE_5__* %21, @extent_hooks_default
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call i8* @extent_alloc_mmap(i32* null, i64 %24, i64 %25, i32* %10, i32* %11)
  store i8* %26, i8** %9, align 8
  br label %50

27:                                               ; preds = %4
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @tsdn_null(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32* (...) @tsd_fetch()
  br label %36

33:                                               ; preds = %27
  %34 = load i32*, i32** %5, align 8
  %35 = call i32* @tsdn_tsd(i32* %34)
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i32* [ %32, %31 ], [ %35, %33 ]
  store i32* %37, i32** %13, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @pre_reentrancy(i32* %38, i32* null)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8* (%struct.TYPE_5__*, i32*, i64, i64, i32*, i32*, i32)*, i8* (%struct.TYPE_5__*, i32*, i64, i64, i32*, i32*, i32)** %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i8* %42(%struct.TYPE_5__* %43, i32* null, i64 %44, i64 %45, i32* %10, i32* %11, i32 %46)
  store i8* %47, i8** %9, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @post_reentrancy(i32* %48)
  br label %50

50:                                               ; preds = %36, %23
  %51 = load i8*, i8** %9, align 8
  ret i8* %51
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @HUGEPAGE_CEILING(i64) #1

declare dso_local i8* @extent_alloc_mmap(i32*, i64, i64, i32*, i32*) #1

declare dso_local i64 @tsdn_null(i32*) #1

declare dso_local i32* @tsd_fetch(...) #1

declare dso_local i32* @tsdn_tsd(i32*) #1

declare dso_local i32 @pre_reentrancy(i32*, i32*) #1

declare dso_local i32 @post_reentrancy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
