; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_spinlock.c___thr_spinlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_spinlock.c___thr_spinlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.spinlock_extra* }
%struct.spinlock_extra = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Spinlock called when not threaded.\00", align 1
@initialized = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Spinlocks not initialized.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__thr_spinlock(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.spinlock_extra*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = call i32 (...) @_thr_isthreaded()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 @PANIC(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, i32* @initialized, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = call i32 @PANIC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.spinlock_extra*, %struct.spinlock_extra** %15, align 8
  %17 = icmp eq %struct.spinlock_extra* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = call i32 @init_spinlock(%struct.TYPE_4__* %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.spinlock_extra*, %struct.spinlock_extra** %23, align 8
  store %struct.spinlock_extra* %24, %struct.spinlock_extra** %3, align 8
  %25 = call i32 (...) @_get_curthread()
  %26 = load %struct.spinlock_extra*, %struct.spinlock_extra** %3, align 8
  %27 = getelementptr inbounds %struct.spinlock_extra, %struct.spinlock_extra* %26, i32 0, i32 0
  %28 = call i32 @THR_UMUTEX_LOCK(i32 %25, i32* %27)
  ret void
}

declare dso_local i32 @_thr_isthreaded(...) #1

declare dso_local i32 @PANIC(i8*) #1

declare dso_local i32 @init_spinlock(%struct.TYPE_4__*) #1

declare dso_local i32 @THR_UMUTEX_LOCK(i32, i32*) #1

declare dso_local i32 @_get_curthread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
