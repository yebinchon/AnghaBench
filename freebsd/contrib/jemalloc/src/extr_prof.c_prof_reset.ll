; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_prof.c_prof_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_prof.c_prof_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prof_dump_mtx = common dso_local global i32 0, align 4
@tdatas_mtx = common dso_local global i32 0, align 4
@lg_prof_sample = common dso_local global i64 0, align 8
@tdatas = common dso_local global i32 0, align 4
@prof_tdata_reset_iter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prof_reset(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ult i64 %7, 32
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @tsd_tsdn(i32* %11)
  %13 = call i32 @malloc_mutex_lock(i32 %12, i32* @prof_dump_mtx)
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @tsd_tsdn(i32* %14)
  %16 = call i32 @malloc_mutex_lock(i32 %15, i32* @tdatas_mtx)
  %17 = load i64, i64* %4, align 8
  store i64 %17, i64* @lg_prof_sample, align 8
  store i32* null, i32** %5, align 8
  br label %18

18:                                               ; preds = %34, %2
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @prof_tdata_reset_iter, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = call i32* @tdata_tree_iter(i32* @tdatas, i32* %19, i32 %20, i8* %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load i32*, i32** %6, align 8
  %28 = call i32* @tdata_tree_next(i32* @tdatas, i32* %27)
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @prof_tdata_destroy_locked(i32* %29, i32* %30, i32 0)
  br label %33

32:                                               ; preds = %18
  store i32* null, i32** %5, align 8
  br label %33

33:                                               ; preds = %32, %26
  br label %34

34:                                               ; preds = %33
  %35 = load i32*, i32** %5, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %18, label %37

37:                                               ; preds = %34
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @tsd_tsdn(i32* %38)
  %40 = call i32 @malloc_mutex_unlock(i32 %39, i32* @tdatas_mtx)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @tsd_tsdn(i32* %41)
  %43 = call i32 @malloc_mutex_unlock(i32 %42, i32* @prof_dump_mtx)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @malloc_mutex_lock(i32, i32*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32* @tdata_tree_iter(i32*, i32*, i32, i8*) #1

declare dso_local i32* @tdata_tree_next(i32*, i32*) #1

declare dso_local i32 @prof_tdata_destroy_locked(i32*, i32*, i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
