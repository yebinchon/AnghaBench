; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_prof.c_prof_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_prof.c_prof_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prof_tdata_merge_iter_arg_s = type { i32 }
%struct.prof_gctx_merge_iter_arg_s = type { i32 }
%struct.prof_gctx_dump_iter_arg_s = type { i32 }

@config_prof = common dso_local global i32 0, align 4
@prof_dump_mtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32)* @prof_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prof_dump(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.prof_tdata_merge_iter_arg_s, align 4
  %13 = alloca %struct.prof_gctx_merge_iter_arg_s, align 4
  %14 = alloca %struct.prof_gctx_dump_iter_arg_s, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @config_prof, align 4
  %17 = call i32 @cassert(i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @tsd_reentrancy_level_get(i32* %18)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = call i32* @prof_tdata_get(i32* %23, i32 1)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %63

28:                                               ; preds = %4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @pre_reentrancy(i32* %29, i32* null)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @tsd_tsdn(i32* %31)
  %33 = call i32 @malloc_mutex_lock(i32 %32, i32* @prof_dump_mtx)
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @prof_dump_prep(i32* %34, i32* %35, %struct.prof_tdata_merge_iter_arg_s* %12, %struct.prof_gctx_merge_iter_arg_s* %13, i32* %11)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @prof_dump_file(i32* %37, i32 %38, i8* %39, i32 %40, i32* %41, %struct.prof_tdata_merge_iter_arg_s* %12, %struct.prof_gctx_merge_iter_arg_s* %13, %struct.prof_gctx_dump_iter_arg_s* %14, i32* %11)
  store i32 %42, i32* %15, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @prof_gctx_finish(i32* %43, i32* %11)
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @tsd_tsdn(i32* %45)
  %47 = call i32 @malloc_mutex_unlock(i32 %46, i32* @prof_dump_mtx)
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @post_reentrancy(i32* %48)
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %63

53:                                               ; preds = %28
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.prof_tdata_merge_iter_arg_s, %struct.prof_tdata_merge_iter_arg_s* %12, i32 0, i32 0
  %58 = getelementptr inbounds %struct.prof_gctx_merge_iter_arg_s, %struct.prof_gctx_merge_iter_arg_s* %13, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @prof_leakcheck(i32* %57, i32 %59, i8* %60)
  br label %62

62:                                               ; preds = %56, %53
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %52, %27
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @cassert(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @tsd_reentrancy_level_get(i32*) #1

declare dso_local i32* @prof_tdata_get(i32*, i32) #1

declare dso_local i32 @pre_reentrancy(i32*, i32*) #1

declare dso_local i32 @malloc_mutex_lock(i32, i32*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @prof_dump_prep(i32*, i32*, %struct.prof_tdata_merge_iter_arg_s*, %struct.prof_gctx_merge_iter_arg_s*, i32*) #1

declare dso_local i32 @prof_dump_file(i32*, i32, i8*, i32, i32*, %struct.prof_tdata_merge_iter_arg_s*, %struct.prof_gctx_merge_iter_arg_s*, %struct.prof_gctx_dump_iter_arg_s*, i32*) #1

declare dso_local i32 @prof_gctx_finish(i32*, i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32*) #1

declare dso_local i32 @post_reentrancy(i32*) #1

declare dso_local i32 @prof_leakcheck(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
