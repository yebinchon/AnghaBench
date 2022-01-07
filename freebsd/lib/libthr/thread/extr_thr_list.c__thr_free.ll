; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_list.c__thr_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_list.c__thr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32* }

@.str = private unnamed_addr constant [19 x i8] c"Freeing thread %p\0A\00", align 1
@tcb_lock = common dso_local global i32 0, align 4
@free_thread_count = common dso_local global i64 0, align 8
@MAX_CACHED_THREADS = common dso_local global i64 0, align 8
@total_threads = common dso_local global i32 0, align 4
@free_thread_lock = common dso_local global i32 0, align 4
@free_threadq = common dso_local global i32 0, align 4
@tle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_thr_free(%struct.pthread* %0, %struct.pthread* %1) #0 {
  %3 = alloca %struct.pthread*, align 8
  %4 = alloca %struct.pthread*, align 8
  store %struct.pthread* %0, %struct.pthread** %3, align 8
  store %struct.pthread* %1, %struct.pthread** %4, align 8
  %5 = load %struct.pthread*, %struct.pthread** %4, align 8
  %6 = call i32 @DBG_MSG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.pthread* %5)
  %7 = load %struct.pthread*, %struct.pthread** %3, align 8
  %8 = icmp ne %struct.pthread* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.pthread*, %struct.pthread** %3, align 8
  %11 = call i32 @THR_LOCK_ACQUIRE(%struct.pthread* %10, i32* @tcb_lock)
  %12 = load %struct.pthread*, %struct.pthread** %4, align 8
  %13 = getelementptr inbounds %struct.pthread, %struct.pthread* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @_tcb_dtor(i32* %14)
  %16 = load %struct.pthread*, %struct.pthread** %3, align 8
  %17 = call i32 @THR_LOCK_RELEASE(%struct.pthread* %16, i32* @tcb_lock)
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.pthread*, %struct.pthread** %4, align 8
  %20 = getelementptr inbounds %struct.pthread, %struct.pthread* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @_tcb_dtor(i32* %21)
  br label %23

23:                                               ; preds = %18, %9
  %24 = load %struct.pthread*, %struct.pthread** %4, align 8
  %25 = getelementptr inbounds %struct.pthread, %struct.pthread* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load %struct.pthread*, %struct.pthread** %3, align 8
  %27 = icmp eq %struct.pthread* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* @free_thread_count, align 8
  %30 = load i64, i64* @MAX_CACHED_THREADS, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28, %23
  %33 = load %struct.pthread*, %struct.pthread** %3, align 8
  %34 = load %struct.pthread*, %struct.pthread** %4, align 8
  %35 = call i32 @thr_destroy(%struct.pthread* %33, %struct.pthread* %34)
  %36 = call i32 @atomic_fetchadd_int(i32* @total_threads, i32 -1)
  br label %47

37:                                               ; preds = %28
  %38 = load %struct.pthread*, %struct.pthread** %3, align 8
  %39 = call i32 @THR_LOCK_ACQUIRE(%struct.pthread* %38, i32* @free_thread_lock)
  %40 = load %struct.pthread*, %struct.pthread** %4, align 8
  %41 = load i32, i32* @tle, align 4
  %42 = call i32 @TAILQ_INSERT_TAIL(i32* @free_threadq, %struct.pthread* %40, i32 %41)
  %43 = load i64, i64* @free_thread_count, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* @free_thread_count, align 8
  %45 = load %struct.pthread*, %struct.pthread** %3, align 8
  %46 = call i32 @THR_LOCK_RELEASE(%struct.pthread* %45, i32* @free_thread_lock)
  br label %47

47:                                               ; preds = %37, %32
  ret void
}

declare dso_local i32 @DBG_MSG(i8*, %struct.pthread*) #1

declare dso_local i32 @THR_LOCK_ACQUIRE(%struct.pthread*, i32*) #1

declare dso_local i32 @_tcb_dtor(i32*) #1

declare dso_local i32 @THR_LOCK_RELEASE(%struct.pthread*, i32*) #1

declare dso_local i32 @thr_destroy(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pthread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
