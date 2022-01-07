; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_ctl.c_arena_i_destroy_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_ctl.c_arena_i_destroy_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@MALLCTL_ARENAS_DESTROYED = common dso_local global i32 0, align 4
@destroyed_link = common dso_local global i32 0, align 4
@ctl_arenas = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i64, i8*, i64*, i8*, i64)* @arena_i_destroy_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arena_i_destroy_ctl(i32* %0, i64* %1, i64 %2, i8* %3, i64* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64* %4, i64** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i64*, i64** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i64*, i64** %12, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = load i64, i64* %14, align 8
  %27 = call i32 @arena_i_reset_destroy_helper(i32* %20, i64* %21, i64 %22, i8* %23, i64* %24, i8* %25, i64 %26, i32* %16, i32** %17)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  br label %84

31:                                               ; preds = %7
  %32 = load i32*, i32** %17, align 8
  %33 = call i64 @arena_nthreads_get(i32* %32, i32 0)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %17, align 8
  %37 = call i64 @arena_nthreads_get(i32* %36, i32 1)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @EFAULT, align 4
  store i32 %40, i32* %15, align 4
  br label %84

41:                                               ; preds = %35
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @arena_reset_prepare_background_thread(i32* %42, i32 %43)
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %17, align 8
  %47 = call i32 @arena_reset(i32* %45, i32* %46)
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @tsd_tsdn(i32* %48)
  %50 = load i32*, i32** %17, align 8
  %51 = call i32 @arena_decay(i32 %49, i32* %50, i32 0, i32 1)
  %52 = load i32, i32* @MALLCTL_ARENAS_DESTROYED, align 4
  %53 = call %struct.TYPE_7__* @arenas_i(i32 %52)
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %18, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @tsd_tsdn(i32* %56)
  %58 = load i32*, i32** %17, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %60 = load i32, i32* %16, align 4
  %61 = call i32 @ctl_arena_refresh(i32 %57, i32* %58, %struct.TYPE_7__* %59, i32 %60, i32 1)
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %17, align 8
  %64 = call i32 @arena_destroy(i32* %62, i32* %63)
  %65 = load i32, i32* %16, align 4
  %66 = call %struct.TYPE_7__* @arenas_i(i32 %65)
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %19, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %70 = load i32, i32* @destroyed_link, align 4
  %71 = call i32 @ql_elm_new(%struct.TYPE_7__* %69, i32 %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ctl_arenas, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %75 = load i32, i32* @destroyed_link, align 4
  %76 = call i32 @ql_tail_insert(i32* %73, %struct.TYPE_7__* %74, i32 %75)
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @arena_reset_finish_background_thread(i32* %77, i32 %78)
  %80 = load i32, i32* %15, align 4
  %81 = icmp eq i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  br label %84

84:                                               ; preds = %41, %39, %30
  %85 = load i32, i32* %15, align 4
  ret i32 %85
}

declare dso_local i32 @arena_i_reset_destroy_helper(i32*, i64*, i64, i8*, i64*, i8*, i64, i32*, i32**) #1

declare dso_local i64 @arena_nthreads_get(i32*, i32) #1

declare dso_local i32 @arena_reset_prepare_background_thread(i32*, i32) #1

declare dso_local i32 @arena_reset(i32*, i32*) #1

declare dso_local i32 @arena_decay(i32, i32*, i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local %struct.TYPE_7__* @arenas_i(i32) #1

declare dso_local i32 @ctl_arena_refresh(i32, i32*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @arena_destroy(i32*, i32*) #1

declare dso_local i32 @ql_elm_new(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ql_tail_insert(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @arena_reset_finish_background_thread(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
