; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_exit.c_exit_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_exit.c_exit_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32, i32, i32, i32, i32, i32, i32*, i32* }

@_thread_active_threads = common dso_local global i32 0, align 4
@PS_DEAD = common dso_local global i32 0, align 4
@THR_FLAGS_NEED_SUSPEND = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@TD_DEATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"thr_exit() returned\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exit_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exit_thread() #0 {
  %1 = alloca %struct.pthread*, align 8
  %2 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %2, %struct.pthread** %1, align 8
  %3 = load %struct.pthread*, %struct.pthread** %1, align 8
  %4 = getelementptr inbounds %struct.pthread, %struct.pthread* %3, i32 0, i32 7
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @free(i32* %5)
  %7 = load %struct.pthread*, %struct.pthread** %1, align 8
  %8 = getelementptr inbounds %struct.pthread, %struct.pthread* %7, i32 0, i32 7
  store i32* null, i32** %8, align 8
  %9 = load %struct.pthread*, %struct.pthread** %1, align 8
  %10 = getelementptr inbounds %struct.pthread, %struct.pthread* %9, i32 0, i32 6
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 (...) @_thread_cleanupspecific()
  br label %15

15:                                               ; preds = %13, %0
  %16 = call i32 (...) @_thr_isthreaded()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = call i32 @exit(i32 0) #3
  unreachable

20:                                               ; preds = %15
  %21 = call i32 @atomic_fetchadd_int(i32* @_thread_active_threads, i32 -1)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @exit(i32 0) #3
  unreachable

25:                                               ; preds = %20
  %26 = call i32 (...) @_malloc_thread_cleanup()
  %27 = load %struct.pthread*, %struct.pthread** %1, align 8
  %28 = call i32 @THR_LOCK(%struct.pthread* %27)
  %29 = load i32, i32* @PS_DEAD, align 4
  %30 = load %struct.pthread*, %struct.pthread** %1, align 8
  %31 = getelementptr inbounds %struct.pthread, %struct.pthread* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load %struct.pthread*, %struct.pthread** %1, align 8
  %33 = getelementptr inbounds %struct.pthread, %struct.pthread* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @THR_FLAGS_NEED_SUSPEND, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %25
  %39 = load %struct.pthread*, %struct.pthread** %1, align 8
  %40 = getelementptr inbounds %struct.pthread, %struct.pthread* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.pthread*, %struct.pthread** %1, align 8
  %44 = getelementptr inbounds %struct.pthread, %struct.pthread* %43, i32 0, i32 4
  %45 = load i32, i32* @INT_MAX, align 4
  %46 = call i32 @_thr_umtx_wake(i32* %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %38, %25
  %48 = load %struct.pthread*, %struct.pthread** %1, align 8
  %49 = getelementptr inbounds %struct.pthread, %struct.pthread* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = load %struct.pthread*, %struct.pthread** %1, align 8
  %54 = load i32, i32* @TD_DEATH, align 4
  %55 = call i64 @SHOULD_REPORT_EVENT(%struct.pthread* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.pthread*, %struct.pthread** %1, align 8
  %59 = call i32 @_thr_report_death(%struct.pthread* %58)
  br label %60

60:                                               ; preds = %57, %52, %47
  %61 = load %struct.pthread*, %struct.pthread** %1, align 8
  %62 = getelementptr inbounds %struct.pthread, %struct.pthread* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.pthread*, %struct.pthread** %1, align 8
  %66 = load %struct.pthread*, %struct.pthread** %1, align 8
  %67 = call i32 @_thr_try_gc(%struct.pthread* %65, %struct.pthread* %66)
  %68 = load %struct.pthread*, %struct.pthread** %1, align 8
  %69 = getelementptr inbounds %struct.pthread, %struct.pthread* %68, i32 0, i32 1
  %70 = call i32 @thr_exit(i32* %69)
  %71 = call i32 (i8*, ...) @PANIC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @_thread_cleanupspecific(...) #1

declare dso_local i32 @_thr_isthreaded(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @atomic_fetchadd_int(i32*, i32) #1

declare dso_local i32 @_malloc_thread_cleanup(...) #1

declare dso_local i32 @THR_LOCK(%struct.pthread*) #1

declare dso_local i32 @_thr_umtx_wake(i32*, i32, i32) #1

declare dso_local i64 @SHOULD_REPORT_EVENT(%struct.pthread*, i32) #1

declare dso_local i32 @_thr_report_death(%struct.pthread*) #1

declare dso_local i32 @_thr_try_gc(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @thr_exit(i32*) #1

declare dso_local i32 @PANIC(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
