; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_check_and_init_mutex.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_check_and_init_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_mutex = type { i32 }

@THR_PSHARED_PTR = common dso_local global %struct.pthread_mutex* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@THR_MUTEX_DESTROYED = common dso_local global %struct.pthread_mutex* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pthread_mutex**, %struct.pthread_mutex**)* @check_and_init_mutex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_and_init_mutex(%struct.pthread_mutex** %0, %struct.pthread_mutex** %1) #0 {
  %3 = alloca %struct.pthread_mutex**, align 8
  %4 = alloca %struct.pthread_mutex**, align 8
  %5 = alloca i32, align 4
  store %struct.pthread_mutex** %0, %struct.pthread_mutex*** %3, align 8
  store %struct.pthread_mutex** %1, %struct.pthread_mutex*** %4, align 8
  %6 = load %struct.pthread_mutex**, %struct.pthread_mutex*** %3, align 8
  %7 = load %struct.pthread_mutex*, %struct.pthread_mutex** %6, align 8
  %8 = load %struct.pthread_mutex**, %struct.pthread_mutex*** %4, align 8
  store %struct.pthread_mutex* %7, %struct.pthread_mutex** %8, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.pthread_mutex**, %struct.pthread_mutex*** %4, align 8
  %10 = load %struct.pthread_mutex*, %struct.pthread_mutex** %9, align 8
  %11 = load %struct.pthread_mutex*, %struct.pthread_mutex** @THR_PSHARED_PTR, align 8
  %12 = icmp eq %struct.pthread_mutex* %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.pthread_mutex**, %struct.pthread_mutex*** %3, align 8
  %15 = call %struct.pthread_mutex* @__thr_pshared_offpage(%struct.pthread_mutex** %14, i32 0)
  %16 = load %struct.pthread_mutex**, %struct.pthread_mutex*** %4, align 8
  store %struct.pthread_mutex* %15, %struct.pthread_mutex** %16, align 8
  %17 = load %struct.pthread_mutex**, %struct.pthread_mutex*** %4, align 8
  %18 = load %struct.pthread_mutex*, %struct.pthread_mutex** %17, align 8
  %19 = icmp eq %struct.pthread_mutex* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %26

22:                                               ; preds = %13
  %23 = load %struct.pthread_mutex**, %struct.pthread_mutex*** %4, align 8
  %24 = load %struct.pthread_mutex*, %struct.pthread_mutex** %23, align 8
  %25 = call i32 @shared_mutex_init(%struct.pthread_mutex* %24, i32* null)
  br label %26

26:                                               ; preds = %22, %20
  br label %55

27:                                               ; preds = %2
  %28 = load %struct.pthread_mutex**, %struct.pthread_mutex*** %4, align 8
  %29 = load %struct.pthread_mutex*, %struct.pthread_mutex** %28, align 8
  %30 = load %struct.pthread_mutex*, %struct.pthread_mutex** @THR_MUTEX_DESTROYED, align 8
  %31 = icmp ule %struct.pthread_mutex* %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @__predict_false(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %27
  %36 = load %struct.pthread_mutex**, %struct.pthread_mutex*** %4, align 8
  %37 = load %struct.pthread_mutex*, %struct.pthread_mutex** %36, align 8
  %38 = load %struct.pthread_mutex*, %struct.pthread_mutex** @THR_MUTEX_DESTROYED, align 8
  %39 = icmp eq %struct.pthread_mutex* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %5, align 4
  br label %53

42:                                               ; preds = %35
  %43 = call i32 (...) @_get_curthread()
  %44 = load %struct.pthread_mutex**, %struct.pthread_mutex*** %3, align 8
  %45 = call i32 @init_static(i32 %43, %struct.pthread_mutex** %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.pthread_mutex**, %struct.pthread_mutex*** %3, align 8
  %50 = load %struct.pthread_mutex*, %struct.pthread_mutex** %49, align 8
  %51 = load %struct.pthread_mutex**, %struct.pthread_mutex*** %4, align 8
  store %struct.pthread_mutex* %50, %struct.pthread_mutex** %51, align 8
  br label %52

52:                                               ; preds = %48, %42
  br label %53

53:                                               ; preds = %52, %40
  br label %54

54:                                               ; preds = %53, %27
  br label %55

55:                                               ; preds = %54, %26
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.pthread_mutex* @__thr_pshared_offpage(%struct.pthread_mutex**, i32) #1

declare dso_local i32 @shared_mutex_init(%struct.pthread_mutex*, i32*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @init_static(i32, %struct.pthread_mutex**) #1

declare dso_local i32 @_get_curthread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
