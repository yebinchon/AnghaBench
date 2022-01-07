; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_mutex_unlock_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_mutex.c_mutex_unlock_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread_mutex = type { i32, i64, i32 }
%struct.pthread = type { i64, i32 }

@THR_MUTEX_DESTROYED = common dso_local global %struct.pthread_mutex* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PMUTEX_FLAG_PRIVATE = common dso_local global i32 0, align 4
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i64 0, align 8
@PMUTEX_FLAG_DEFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pthread_mutex*, i32, i32*)* @mutex_unlock_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mutex_unlock_common(%struct.pthread_mutex* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pthread_mutex*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pthread*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pthread_mutex* %0, %struct.pthread_mutex** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %15 = load %struct.pthread_mutex*, %struct.pthread_mutex** @THR_MUTEX_DESTROYED, align 8
  %16 = icmp ule %struct.pthread_mutex* %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @__predict_false(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %22 = load %struct.pthread_mutex*, %struct.pthread_mutex** @THR_MUTEX_DESTROYED, align 8
  %23 = icmp eq %struct.pthread_mutex* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %134

26:                                               ; preds = %20
  %27 = load i32, i32* @EPERM, align 4
  store i32 %27, i32* %4, align 4
  br label %134

28:                                               ; preds = %3
  %29 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %29, %struct.pthread** %8, align 8
  %30 = load %struct.pthread*, %struct.pthread** %8, align 8
  %31 = call i64 @TID(%struct.pthread* %30)
  store i64 %31, i64* %9, align 8
  %32 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %33 = call i64 @PMUTEX_OWNER_ID(%struct.pthread_mutex* %32)
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @__predict_false(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @EPERM, align 4
  store i32 %40, i32* %4, align 4
  br label %134

41:                                               ; preds = %28
  store i32 0, i32* %11, align 4
  %42 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %43 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PMUTEX_FLAG_PRIVATE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %12, align 4
  %49 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %50 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @PMUTEX_TYPE(i32 %51)
  %53 = load i64, i64* @PTHREAD_MUTEX_RECURSIVE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %41
  %56 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %57 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br label %60

60:                                               ; preds = %55, %41
  %61 = phi i1 [ false, %41 ], [ %59, %55 ]
  %62 = zext i1 %61 to i32
  %63 = call i64 @__predict_false(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %67 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  br label %123

70:                                               ; preds = %60
  %71 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %72 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @PMUTEX_FLAG_DEFERRED, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  store i32 1, i32* %10, align 4
  %78 = load i32, i32* @PMUTEX_FLAG_DEFERRED, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %81 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %85

84:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %84, %77
  %86 = load %struct.pthread*, %struct.pthread** %8, align 8
  %87 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %88 = call i32 @_mutex_enter_robust(%struct.pthread* %86, %struct.pthread_mutex* %87)
  store i32 %88, i32* %13, align 4
  %89 = load %struct.pthread*, %struct.pthread** %8, align 8
  %90 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %91 = call i32 @dequeue_mutex(%struct.pthread* %89, %struct.pthread_mutex* %90)
  %92 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %93 = getelementptr inbounds %struct.pthread_mutex, %struct.pthread_mutex* %92, i32 0, i32 2
  %94 = load i64, i64* %9, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @_thr_umutex_unlock2(i32* %93, i64 %94, i32* %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %85
  %100 = load i32*, i32** %7, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load %struct.pthread*, %struct.pthread** %8, align 8
  %104 = getelementptr inbounds %struct.pthread, %struct.pthread* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.pthread*, %struct.pthread** %8, align 8
  %107 = getelementptr inbounds %struct.pthread, %struct.pthread* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @_thr_wake_all(i32 %105, i64 %108)
  %110 = load %struct.pthread*, %struct.pthread** %8, align 8
  %111 = getelementptr inbounds %struct.pthread, %struct.pthread* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  br label %114

112:                                              ; preds = %99
  %113 = load i32*, i32** %7, align 8
  store i32 1, i32* %113, align 4
  br label %114

114:                                              ; preds = %112, %102
  br label %115

115:                                              ; preds = %114, %85
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load %struct.pthread*, %struct.pthread** %8, align 8
  %120 = load %struct.pthread_mutex*, %struct.pthread_mutex** %5, align 8
  %121 = call i32 @_mutex_leave_robust(%struct.pthread* %119, %struct.pthread_mutex* %120)
  br label %122

122:                                              ; preds = %118, %115
  br label %123

123:                                              ; preds = %122, %65
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.pthread*, %struct.pthread** %8, align 8
  %131 = call i32 @THR_CRITICAL_LEAVE(%struct.pthread* %130)
  br label %132

132:                                              ; preds = %129, %126, %123
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %132, %39, %26, %24
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i64 @TID(%struct.pthread*) #1

declare dso_local i64 @PMUTEX_OWNER_ID(%struct.pthread_mutex*) #1

declare dso_local i64 @PMUTEX_TYPE(i32) #1

declare dso_local i32 @_mutex_enter_robust(%struct.pthread*, %struct.pthread_mutex*) #1

declare dso_local i32 @dequeue_mutex(%struct.pthread*, %struct.pthread_mutex*) #1

declare dso_local i32 @_thr_umutex_unlock2(i32*, i64, i32*) #1

declare dso_local i32 @_thr_wake_all(i32, i64) #1

declare dso_local i32 @_mutex_leave_robust(%struct.pthread*, %struct.pthread_mutex*) #1

declare dso_local i32 @THR_CRITICAL_LEAVE(%struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
