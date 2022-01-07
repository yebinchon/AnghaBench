; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_mutex_init_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_mutex_init_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_mutex = type { i64, i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32*, i8* }
%struct.pthread_mutex_attr = type { i32, i64, i64, i32, i32 }

@UMUTEX_UNOWNED = common dso_local global i8* null, align 8
@UMUTEX_PRIO_INHERIT = common dso_local global i32 0, align 4
@UMUTEX_CONTESTED = common dso_local global i8* null, align 8
@UMUTEX_PRIO_PROTECT = common dso_local global i32 0, align 4
@PTHREAD_PROCESS_SHARED = common dso_local global i64 0, align 8
@USYNC_PROCESS_SHARED = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_ROBUST = common dso_local global i64 0, align 8
@UMUTEX_ROBUST = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_ADAPTIVE_NP = common dso_local global i64 0, align 8
@_thr_spinloops = common dso_local global i64 0, align 8
@MUTEX_ADAPTIVE_SPINS = common dso_local global i64 0, align 8
@_thr_yieldloops = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pthread_mutex*, %struct.pthread_mutex_attr*)* @mutex_init_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mutex_init_body(%struct.pthread_mutex* %0, %struct.pthread_mutex_attr* %1) #0 {
  %3 = alloca %struct.pthread_mutex*, align 8
  %4 = alloca %struct.pthread_mutex_attr*, align 8
  store %struct.pthread_mutex* %0, %struct.pthread_mutex** %3, align 8
  store %struct.pthread_mutex_attr* %1, %struct.pthread_mutex_attr** %4, align 8
  %5 = load %struct.pthread_mutex_attr*, %struct.pthread_mutex_attr** %4, align 8
  %6 = getelementptr inbounds %struct.pthread_mutex_attr, %struct.pthread_mutex_attr* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %9 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %11 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %13 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %15 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %17 = call i32 @mutex_init_link(%struct.pthread_mutex* %16)
  %18 = load %struct.pthread_mutex_attr*, %struct.pthread_mutex_attr** %4, align 8
  %19 = getelementptr inbounds %struct.pthread_mutex_attr, %struct.pthread_mutex_attr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %55 [
    i32 129, label %21
    i32 130, label %29
    i32 128, label %38
  ]

21:                                               ; preds = %2
  %22 = load i8*, i8** @UMUTEX_UNOWNED, align 8
  %23 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %24 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i8* %22, i8** %25, align 8
  %26 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %27 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %55

29:                                               ; preds = %2
  %30 = load i8*, i8** @UMUTEX_UNOWNED, align 8
  %31 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %32 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i8* %30, i8** %33, align 8
  %34 = load i32, i32* @UMUTEX_PRIO_INHERIT, align 4
  %35 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %36 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  br label %55

38:                                               ; preds = %2
  %39 = load i8*, i8** @UMUTEX_CONTESTED, align 8
  %40 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %41 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i8* %39, i8** %42, align 8
  %43 = load i32, i32* @UMUTEX_PRIO_PROTECT, align 4
  %44 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %45 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.pthread_mutex_attr*, %struct.pthread_mutex_attr** %4, align 8
  %48 = getelementptr inbounds %struct.pthread_mutex_attr, %struct.pthread_mutex_attr* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %51 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %49, i32* %54, align 4
  br label %55

55:                                               ; preds = %2, %38, %29, %21
  %56 = load %struct.pthread_mutex_attr*, %struct.pthread_mutex_attr** %4, align 8
  %57 = getelementptr inbounds %struct.pthread_mutex_attr, %struct.pthread_mutex_attr* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PTHREAD_PROCESS_SHARED, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i32, i32* @USYNC_PROCESS_SHARED, align 4
  %63 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %64 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %62
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %61, %55
  %69 = load %struct.pthread_mutex_attr*, %struct.pthread_mutex_attr** %4, align 8
  %70 = getelementptr inbounds %struct.pthread_mutex_attr, %struct.pthread_mutex_attr* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PTHREAD_MUTEX_ROBUST, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = call i32 @mutex_init_robust(i32* null)
  %76 = load i32, i32* @UMUTEX_ROBUST, align 4
  %77 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %78 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %76
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %74, %68
  %83 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %84 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @PMUTEX_TYPE(i32 %85)
  %87 = load i64, i64* @PTHREAD_MUTEX_ADAPTIVE_NP, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %82
  %90 = load i64, i64* @_thr_spinloops, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i64, i64* @_thr_spinloops, align 8
  br label %96

94:                                               ; preds = %89
  %95 = load i64, i64* @MUTEX_ADAPTIVE_SPINS, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i64 [ %93, %92 ], [ %95, %94 ]
  %98 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %99 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* @_thr_yieldloops, align 8
  %101 = load %struct.pthread_mutex*, %struct.pthread_mutex** %3, align 8
  %102 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %96, %82
  ret void
}

declare dso_local i32 @mutex_init_link(%struct.pthread_mutex*) #1

declare dso_local i32 @mutex_init_robust(i32*) #1

declare dso_local i64 @PMUTEX_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
