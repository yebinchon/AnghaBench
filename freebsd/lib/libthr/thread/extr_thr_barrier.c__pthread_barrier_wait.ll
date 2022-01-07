; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_barrier.c__pthread_barrier_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_barrier.c__pthread_barrier_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, i32, i32, i64 }
%struct.pthread = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@THR_PSHARED_PTR = common dso_local global %struct.TYPE_6__* null, align 8
@PTHREAD_BARRIER_SERIAL_THREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pthread_barrier_wait(%struct.TYPE_6__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__**, align 8
  %4 = alloca %struct.pthread*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %3, align 8
  %8 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %9 = icmp eq %struct.TYPE_6__** %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp eq %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %1
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %2, align 4
  br label %107

16:                                               ; preds = %10
  %17 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @THR_PSHARED_PTR, align 8
  %20 = icmp eq %struct.TYPE_6__* %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %23 = call %struct.TYPE_6__* @__thr_pshared_offpage(%struct.TYPE_6__** %22, i32 0)
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %5, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = icmp eq %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %2, align 4
  br label %107

28:                                               ; preds = %21
  br label %32

29:                                               ; preds = %16
  %30 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %5, align 8
  br label %32

32:                                               ; preds = %29, %28
  %33 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %33, %struct.pthread** %4, align 8
  %34 = load %struct.pthread*, %struct.pthread** %4, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  %37 = call i32 @THR_UMUTEX_LOCK(%struct.pthread* %34, i32* %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %32
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 5
  %55 = call i32 @_thr_ucond_broadcast(i32* %54)
  %56 = load %struct.pthread*, %struct.pthread** %4, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 4
  %59 = call i32 @THR_UMUTEX_UNLOCK(%struct.pthread* %56, i32* %58)
  %60 = load i32, i32* @PTHREAD_BARRIER_SERIAL_THREAD, align 4
  store i32 %60, i32* %7, align 4
  br label %105

61:                                               ; preds = %32
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %6, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %79, %61
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = call i32 @_thr_ucond_wait(i32* %71, i32* %73, i32* null, i32 0)
  %75 = load %struct.pthread*, %struct.pthread** %4, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 4
  %78 = call i32 @THR_UMUTEX_LOCK(%struct.pthread* %75, i32* %77)
  br label %79

79:                                               ; preds = %69
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %69, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, i64* %87, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 5
  %99 = call i32 @_thr_ucond_broadcast(i32* %98)
  br label %100

100:                                              ; preds = %96, %91, %85
  %101 = load %struct.pthread*, %struct.pthread** %4, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 4
  %104 = call i32 @THR_UMUTEX_UNLOCK(%struct.pthread* %101, i32* %103)
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %100, %46
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %26, %14
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.TYPE_6__* @__thr_pshared_offpage(%struct.TYPE_6__**, i32) #1

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @THR_UMUTEX_LOCK(%struct.pthread*, i32*) #1

declare dso_local i32 @_thr_ucond_broadcast(i32*) #1

declare dso_local i32 @THR_UMUTEX_UNLOCK(%struct.pthread*, i32*) #1

declare dso_local i32 @_thr_ucond_wait(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
