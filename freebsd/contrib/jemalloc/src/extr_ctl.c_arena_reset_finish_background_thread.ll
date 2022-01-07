; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_ctl.c_arena_reset_finish_background_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_ctl.c_arena_reset_finish_background_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@have_background_thread = common dso_local global i64 0, align 8
@ncpus = common dso_local global i32 0, align 4
@background_thread_info = common dso_local global %struct.TYPE_3__* null, align 8
@background_thread_paused = common dso_local global i64 0, align 8
@background_thread_started = common dso_local global i64 0, align 8
@background_thread_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @arena_reset_finish_background_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arena_reset_finish_background_thread(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @have_background_thread, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %2
  %10 = call i64 (...) @background_thread_enabled()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ncpus, align 4
  %15 = urem i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @background_thread_info, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %6, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @background_thread_paused, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @tsd_tsdn(i32* %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = call i32 @malloc_mutex_lock(i32 %28, i32* %30)
  %32 = load i64, i64* @background_thread_started, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @tsd_tsdn(i32* %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = call i32 @malloc_mutex_unlock(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %12, %9
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @tsd_tsdn(i32* %41)
  %43 = call i32 @malloc_mutex_unlock(i32 %42, i32* @background_thread_lock)
  br label %44

44:                                               ; preds = %40, %2
  ret void
}

declare dso_local i64 @background_thread_enabled(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @malloc_mutex_lock(i32, i32*) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
