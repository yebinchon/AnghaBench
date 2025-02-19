; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_prof.c_prof_free_sampled_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_prof.c_prof_free_sampled_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prof_free_sampled_object(i32* %0, i64 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @tsd_tsdn(i32* %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @malloc_mutex_lock(i32 %8, i32 %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp uge i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = sub i64 %39, %35
  store i64 %40, i64* %38, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @tsd_tsdn(i32* %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = call i64 @prof_tctx_should_destroy(i32 %42, %struct.TYPE_9__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %3
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = call i32 @prof_tctx_destroy(i32* %47, %struct.TYPE_9__* %48)
  br label %59

50:                                               ; preds = %3
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @tsd_tsdn(i32* %51)
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @malloc_mutex_unlock(i32 %52, i32 %57)
  br label %59

59:                                               ; preds = %50, %46
  ret void
}

declare dso_local i32 @malloc_mutex_lock(i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @prof_tctx_should_destroy(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @prof_tctx_destroy(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
