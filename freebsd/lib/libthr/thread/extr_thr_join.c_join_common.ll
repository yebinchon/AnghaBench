; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_join.c_join_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_join.c_join_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32, i64, %struct.pthread*, i8* }
%struct.timespec = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@THR_FLAGS_DETACHED = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@backout_join = common dso_local global i32 0, align 4
@TID_TERMINATED = common dso_local global i64 0, align 8
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pthread*, i8**, %struct.timespec*)* @join_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @join_common(%struct.pthread* %0, i8** %1, %struct.timespec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pthread*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca %struct.pthread*, align 8
  %9 = alloca %struct.timespec, align 8
  %10 = alloca %struct.timespec, align 8
  %11 = alloca %struct.timespec*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.pthread* %0, %struct.pthread** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  %15 = call %struct.pthread* (...) @_get_curthread()
  store %struct.pthread* %15, %struct.pthread** %8, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.pthread*, %struct.pthread** %5, align 8
  %17 = icmp eq %struct.pthread* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %150

20:                                               ; preds = %3
  %21 = load %struct.pthread*, %struct.pthread** %5, align 8
  %22 = load %struct.pthread*, %struct.pthread** %8, align 8
  %23 = icmp eq %struct.pthread* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @EDEADLK, align 4
  store i32 %25, i32* %4, align 4
  br label %150

26:                                               ; preds = %20
  %27 = load %struct.pthread*, %struct.pthread** %8, align 8
  %28 = load %struct.pthread*, %struct.pthread** %5, align 8
  %29 = call i32 @_thr_find_thread(%struct.pthread* %27, %struct.pthread* %28, i32 1)
  store i32 %29, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @ESRCH, align 4
  store i32 %32, i32* %4, align 4
  br label %150

33:                                               ; preds = %26
  %34 = load %struct.pthread*, %struct.pthread** %5, align 8
  %35 = getelementptr inbounds %struct.pthread, %struct.pthread* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @THR_FLAGS_DETACHED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %14, align 4
  br label %50

42:                                               ; preds = %33
  %43 = load %struct.pthread*, %struct.pthread** %5, align 8
  %44 = getelementptr inbounds %struct.pthread, %struct.pthread* %43, i32 0, i32 2
  %45 = load %struct.pthread*, %struct.pthread** %44, align 8
  %46 = icmp ne %struct.pthread* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOTSUP, align 4
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %47, %42
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.pthread*, %struct.pthread** %8, align 8
  %55 = load %struct.pthread*, %struct.pthread** %5, align 8
  %56 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %54, %struct.pthread* %55)
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %4, align 4
  br label %150

58:                                               ; preds = %50
  %59 = load %struct.pthread*, %struct.pthread** %8, align 8
  %60 = load %struct.pthread*, %struct.pthread** %5, align 8
  %61 = getelementptr inbounds %struct.pthread, %struct.pthread* %60, i32 0, i32 2
  store %struct.pthread* %59, %struct.pthread** %61, align 8
  %62 = load %struct.pthread*, %struct.pthread** %8, align 8
  %63 = load %struct.pthread*, %struct.pthread** %5, align 8
  %64 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %62, %struct.pthread* %63)
  %65 = load %struct.pthread*, %struct.pthread** %8, align 8
  %66 = load i32, i32* @backout_join, align 4
  %67 = load %struct.pthread*, %struct.pthread** %5, align 8
  %68 = call i32 @THR_CLEANUP_PUSH(%struct.pthread* %65, i32 %66, %struct.pthread* %67)
  %69 = load %struct.pthread*, %struct.pthread** %8, align 8
  %70 = call i32 @_thr_cancel_enter(%struct.pthread* %69)
  %71 = load %struct.pthread*, %struct.pthread** %5, align 8
  %72 = getelementptr inbounds %struct.pthread, %struct.pthread* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %13, align 8
  br label %74

74:                                               ; preds = %107, %58
  %75 = load %struct.pthread*, %struct.pthread** %5, align 8
  %76 = getelementptr inbounds %struct.pthread, %struct.pthread* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @TID_TERMINATED, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %108

80:                                               ; preds = %74
  %81 = load %struct.pthread*, %struct.pthread** %8, align 8
  %82 = call i32 @_thr_testcancel(%struct.pthread* %81)
  %83 = load %struct.timespec*, %struct.timespec** %7, align 8
  %84 = icmp ne %struct.timespec* %83, null
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load i32, i32* @CLOCK_REALTIME, align 4
  %87 = call i32 @clock_gettime(i32 %86, %struct.timespec* %9)
  %88 = load %struct.timespec*, %struct.timespec** %7, align 8
  %89 = call i32 @TIMESPEC_SUB(%struct.timespec* %10, %struct.timespec* %88, %struct.timespec* %9)
  %90 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %94, i32* %14, align 4
  br label %108

95:                                               ; preds = %85
  store %struct.timespec* %10, %struct.timespec** %11, align 8
  br label %97

96:                                               ; preds = %80
  store %struct.timespec* null, %struct.timespec** %11, align 8
  br label %97

97:                                               ; preds = %96, %95
  %98 = load %struct.pthread*, %struct.pthread** %5, align 8
  %99 = getelementptr inbounds %struct.pthread, %struct.pthread* %98, i32 0, i32 1
  %100 = load i64, i64* %13, align 8
  %101 = load %struct.timespec*, %struct.timespec** %11, align 8
  %102 = call i32 @_thr_umtx_wait(i64* %99, i64 %100, %struct.timespec* %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @ETIMEDOUT, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %108

107:                                              ; preds = %97
  br label %74

108:                                              ; preds = %106, %93, %74
  %109 = load %struct.pthread*, %struct.pthread** %8, align 8
  %110 = call i32 @_thr_cancel_leave(%struct.pthread* %109, i32 0)
  %111 = load %struct.pthread*, %struct.pthread** %8, align 8
  %112 = call i32 @THR_CLEANUP_POP(%struct.pthread* %111, i32 0)
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @ETIMEDOUT, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %108
  %117 = load %struct.pthread*, %struct.pthread** %8, align 8
  %118 = load %struct.pthread*, %struct.pthread** %5, align 8
  %119 = call i32 @THR_THREAD_LOCK(%struct.pthread* %117, %struct.pthread* %118)
  %120 = load %struct.pthread*, %struct.pthread** %5, align 8
  %121 = getelementptr inbounds %struct.pthread, %struct.pthread* %120, i32 0, i32 2
  store %struct.pthread* null, %struct.pthread** %121, align 8
  %122 = load %struct.pthread*, %struct.pthread** %8, align 8
  %123 = load %struct.pthread*, %struct.pthread** %5, align 8
  %124 = call i32 @THR_THREAD_UNLOCK(%struct.pthread* %122, %struct.pthread* %123)
  br label %148

125:                                              ; preds = %108
  store i32 0, i32* %14, align 4
  %126 = load %struct.pthread*, %struct.pthread** %5, align 8
  %127 = getelementptr inbounds %struct.pthread, %struct.pthread* %126, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  store i8* %128, i8** %12, align 8
  %129 = load %struct.pthread*, %struct.pthread** %8, align 8
  %130 = load %struct.pthread*, %struct.pthread** %5, align 8
  %131 = call i32 @THR_THREAD_LOCK(%struct.pthread* %129, %struct.pthread* %130)
  %132 = load i32, i32* @THR_FLAGS_DETACHED, align 4
  %133 = load %struct.pthread*, %struct.pthread** %5, align 8
  %134 = getelementptr inbounds %struct.pthread, %struct.pthread* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.pthread*, %struct.pthread** %5, align 8
  %138 = getelementptr inbounds %struct.pthread, %struct.pthread* %137, i32 0, i32 2
  store %struct.pthread* null, %struct.pthread** %138, align 8
  %139 = load %struct.pthread*, %struct.pthread** %8, align 8
  %140 = load %struct.pthread*, %struct.pthread** %5, align 8
  %141 = call i32 @_thr_try_gc(%struct.pthread* %139, %struct.pthread* %140)
  %142 = load i8**, i8*** %6, align 8
  %143 = icmp ne i8** %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %125
  %145 = load i8*, i8** %12, align 8
  %146 = load i8**, i8*** %6, align 8
  store i8* %145, i8** %146, align 8
  br label %147

147:                                              ; preds = %144, %125
  br label %148

148:                                              ; preds = %147, %116
  %149 = load i32, i32* %14, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %148, %53, %31, %24, %18
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local %struct.pthread* @_get_curthread(...) #1

declare dso_local i32 @_thr_find_thread(%struct.pthread*, %struct.pthread*, i32) #1

declare dso_local i32 @THR_THREAD_UNLOCK(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @THR_CLEANUP_PUSH(%struct.pthread*, i32, %struct.pthread*) #1

declare dso_local i32 @_thr_cancel_enter(%struct.pthread*) #1

declare dso_local i32 @_thr_testcancel(%struct.pthread*) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @TIMESPEC_SUB(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @_thr_umtx_wait(i64*, i64, %struct.timespec*) #1

declare dso_local i32 @_thr_cancel_leave(%struct.pthread*, i32) #1

declare dso_local i32 @THR_CLEANUP_POP(%struct.pthread*, i32) #1

declare dso_local i32 @THR_THREAD_LOCK(%struct.pthread*, %struct.pthread*) #1

declare dso_local i32 @_thr_try_gc(%struct.pthread*, %struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
